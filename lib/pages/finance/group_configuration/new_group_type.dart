import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart' as sdk;
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/new_group_type_view.dart';
import 'package:stawi/pages/finance/group_configuration/steps/finalize_group_create_step.dart';
import 'package:stawi/pages/finance/group_configuration/steps/group_calendar_selection_step.dart';
import 'package:stawi/pages/finance/group_configuration/steps/group_currency_step.dart';
import 'package:stawi/pages/finance/group_configuration/steps/group_periodicity_step.dart';
import 'package:stawi/pages/finance/group_configuration/steps/group_saving_amount_step.dart';
import 'package:stawi/pages/finance/group_configuration/steps/group_termination_date_step.dart';
import 'package:stawi/pages/finance/group_configuration/steps/group_type_step.dart';
import 'package:stawi/services/stawi/event_service.dart';
import 'package:stawi/services/stawi/payloads/default_payloads.dart';
import 'package:stawi/services/stawi/payloads/group_create_payloads.dart';
import 'package:stawi/services/stawi/payloads/response_payloads.dart';
import 'package:stawi/utils/file_selector.dart';
import 'package:stawi/widgets/matrix.dart';
import 'package:xid/xid.dart';

class NewGroupType extends StatefulWidget {
  final sdk.Room room;
  const NewGroupType({required this.room, super.key});

  @override
  NewGroupTypeController createState() => NewGroupTypeController();
}

class NewGroupTypeController extends State<NewGroupType> {
  TextEditingController groupNameController = TextEditingController();
  TextEditingController groupDescriptionController = TextEditingController();
  TextEditingController groupCurrencyController = TextEditingController();
  TextEditingController groupTerminationController = TextEditingController();
  TextEditingController groupSavingAmountController = TextEditingController();

  // Single form key for the entire multi-step form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Validation error tracking
  Map<String, String?> validationErrors = {};

  // Validate the current step using the payload validation
  bool isPayloadValid({List<String>? affectedFields}) {
    final fieldsToValidate = affectedFields ?? [];

    // Always validate if on last step, otherwise allow empty field lists to pass
    if (!isLastStep() && fieldsToValidate.isEmpty) {
      return true;
    }

    final errors = payload.validate(context, affectedFields: fieldsToValidate);
    setState(() => validationErrors = errors);

    // Print errors for debugging
    if (errors.isNotEmpty) {
      return false;
    }
    return true;
  }

  // Get error message for a specific field
  String? getFieldError(String fieldName) {
    return validationErrors[fieldName];
  }

  // Clear error for a specific field
  void clearFieldError(String fieldName) {
    if (validationErrors.containsKey(fieldName)) {
      setState(() {
        validationErrors.remove(fieldName);
      });
    }
  }

  List<Step> _groupCreateSteps = List.empty(growable: true);

  List<Step> get groupCreateSteps => _groupCreateSteps;

  void setGroupCreateSteps(List<Step> steps) =>
      setState(() => _groupCreateSteps = steps);

  List<String> _activeFields = List.empty(growable: true);

  void setActiveFields(List<String> activeFields) =>
      setState(() => _activeFields = activeFields);

  int __currentStep = 0;

  int get getCurrentStep => __currentStep;

  void setCurrentStep(int newStep) {
    if (newStep > __currentStep) {
      final valid = isPayloadValid(affectedFields: _activeFields);
      if (!valid) {
        return; // Don't proceed if validation fails
      }
    }

    setState(() {
      __currentStep = newStep;
    });
  }

  bool get isFirstStep => __currentStep == 0;

  bool isLastStep() {
    return __currentStep == _groupCreateSteps.length - 1;
  }

  bool isComplete = false;

  void setIsComplete() {
    setState(() {
      isComplete = true;
    });
  }

  String? _groupTypeDescription;

  String getGroupTypeDescription(BuildContext context) {
    _groupTypeDescription ??= L10n.of(context).groupTypeDescriptionDefault;
    return _groupTypeDescription!;
  }

  void setGroupTypeDescription(String description) =>
      setState(() => _groupTypeDescription = description);

  GroupCreateEventContent payload = GroupCreateDefaultPayload();

  void setPayload(GroupCreateEventContent val) {
    final room = widget.room;
    payload.id = room.id;
    payload.groupName = room.name;
    payload.description = room.topic;

    setState(() => payload = val);
  }

  void clearPayload() => setState(() => payload = GroupCreateDefaultPayload());

  bool publicGroup = false;
  bool groupCanBeFound = false;

  Uint8List? avatar;

  Uri? avatarUrl;

  Object? error;

  bool loading = false;

  void setPublicGroup(bool b) =>
      setState(() => publicGroup = groupCanBeFound = b);

  void setGroupCanBeFound(bool b) => setState(() => groupCanBeFound = b);

  void selectPhoto() async {
    final photo = await selectFiles(
      context,
      type: FileSelectorType.images,
      allowMultiple: false,
    );
    final bytes = await photo.singleOrNull?.readAsBytes();

    setState(() {
      avatarUrl = null;
      avatar = bytes;
    });
  }

  Future<void> _sendGroupTypePayload() async {
    loading = true;
    error = null;

    final room = widget.room;

    try {
      // Send the event using our service
      await StawiEventService.sendOutEvent(
        client: room.client,
        roomId: room.id,
        eventContent: payload,
      );

      // Create a unique ID for the group detail
      final groupDetailId = Xid().toString();

      // Create the group detail state
      final groupDetailState = GroupDetailState(
        id: groupDetailId,
        dateCreated: DateTime.now().toIso8601String(),
        groupCode: GroupCode(
          id: room.id,
          name: room.name,
          type: payload.groupType ?? GroupType.grameen,
        ),
        settings: {},
      );

      // Send the group detail state
      await StawiEventService.setRoomStateEvent(
        client: room.client,
        roomId: room.id,
        eventState: groupDetailState,
      );

      // Create ledger accounts with the selected currency
      final currency = payload.groupCurrency ?? 'USD';

      // Create a ledger account state with random balances
      final accounts = LedgerAccountState.generateDefaultAccounts(currency);

      final ledgerState = LedgerAccountState(
        id: Xid().toString(),
        groupCode: groupDetailState.groupCode,
        accounts: accounts,
        dateCreated: DateTime.now().toIso8601String(),
      );

      await StawiEventService.setRoomStateEvent(
        client: room.client,
        roomId: room.id,
        eventState: ledgerState,
      );
    } catch (e) {
      error = 'Failed to save group configuration: ${e.toString()}';
    } finally {
      loading = false;
    }
  }

  void submitAction([_]) async {
    final client = Matrix.of(context).client;

    try {
      setState(() {
        loading = true;
        error = null;
      });

      final avatar = this.avatar;
      avatarUrl ??= avatar == null ? null : await client.uploadContent(avatar);

      if (!mounted) return;

      await _sendGroupTypePayload();
    } catch (e, s) {
      sdk.Logs().d('Unable to create group', e, s);
      setState(() {
        error = e;
        loading = false;
      });
    }
  }

  List<Step> generateStepsRequired(BuildContext context) {
    var activeSteps = [
      Step(
        state: __currentStep >= 1 ? StepState.complete : StepState.indexed,
        isActive: __currentStep > 0,
        title: Text(L10n.of(context).groupType),
        content: GroupTypeStep(this),
      ),
    ];

    activeSteps = extendStepsByGroupType(
      context,
      payload.groupType,
      activeSteps,
    );

    final lastStepIndex = activeSteps.length;

    activeSteps.add(
      Step(
        isActive: __currentStep >= lastStepIndex,
        title: Text(L10n.of(context).finalizeGroupConfiguration),
        content: FinalizeGroupCreateStep(this),
      ),
    );
    _groupCreateSteps = activeSteps;
    return _groupCreateSteps;
  }

  List<Step> extendStepsByGroupType(
    BuildContext context,
    GroupType? groupType,
    List<Step> activeSteps,
  ) {
    activeSteps.add(
      Step(
        isActive: __currentStep >= 2,
        title: Text(L10n.of(context).currency),
        content: GroupCurrencyStep(this),
      ),
    );

    switch (groupType) {
      case GroupType.funding:
      case GroupType.voluntary:
        break;
      case GroupType.temporary:
        activeSteps.add(
          Step(
            isActive: __currentStep >= 3,
            title: Text(L10n.of(context).groupTerminationDate),
            content: GroupTerminationDateStep(this),
          ),
        );
      case GroupType.merryGoRound:
        activeSteps.add(
          Step(
            isActive: __currentStep >= 3,
            title: Text(L10n.of(context).periodicSetup),
            content: GroupPeriodicityStep(this),
          ),
        );
        // Add calendar selection step
        activeSteps.add(
          Step(
            isActive: __currentStep >= 4,
            title: Text(L10n.of(context).calendarSelection),
            content: GroupCalendarSelectionStep(this),
          ),
        );
        activeSteps.add(
          Step(
            isActive: __currentStep >= 5,
            title: Text(L10n.of(context).periodicSavingAmount),
            content: GroupSavingAmountStep(this),
          ),
        );

      default:
        activeSteps.add(
          Step(
            isActive: __currentStep >= 3,
            title: Text(L10n.of(context).periodicSetup),
            content: GroupPeriodicityStep(this),
          ),
        );

        // Add calendar selection step
        activeSteps.add(
          Step(
            isActive: __currentStep >= 4,
            title: Text(L10n.of(context).calendarSelection),
            content: GroupCalendarSelectionStep(this),
          ),
        );

        activeSteps.add(
          Step(
            isActive: __currentStep >= 5,
            title: Text(L10n.of(context).periodicSavingAmount),
            content: GroupSavingAmountStep(this),
          ),
        );
    }

    return activeSteps;
  }

  @override
  Widget build(BuildContext context) => NewGroupTypeView(this);
}
