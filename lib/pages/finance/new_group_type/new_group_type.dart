import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart' as sdk;
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/new_group_type/new_group_type_view.dart';
import 'package:stawi/pages/finance/new_group_type/steps/finalize_group_create_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_currency_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_periodicity_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_saving_amount_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_termination_date_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_type_step.dart';
import 'package:stawi/services/stawi/event_service.dart';
import 'package:stawi/services/stawi/payloads/group_create_payloads.dart';
import 'package:stawi/utils/file_selector.dart';
import 'package:stawi/widgets/matrix.dart';

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

  List<Step> _groupCreateSteps = List.empty(growable: true);

  void setGroupCreateSteps(List<Step> steps) =>
      setState(() => _groupCreateSteps = steps);

  int currentStep = 0;

  void setCurrentStep(int newStep) => setState(() => currentStep = newStep);

  bool get isFirstStep => currentStep == 0;

  bool isLastStep() {
    return currentStep == _groupCreateSteps.length - 1;
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

  PayloadGroupCreate payload = PayloadGroupCreateDefault();

  void setPayload(PayloadGroupCreate val) => setState(() => payload = val);

  void clearPayload() => setState(() => payload = PayloadGroupCreateDefault());

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
    payload.groupName = room.name;
    payload.description = room.topic;

    try {
      // Send the event using our service
      await StawiEventService.sendOutEvent(
        client: room.client,
        roomId: room.id,
        eventContent: payload,
      );
    } catch (e) {
      error = 'Failed to save voting mode: ${e.toString()}';
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
        state: currentStep >= 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep > 0,
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
        isActive: currentStep >= lastStepIndex,
        title: Text(L10n.of(context).finalizeGroupCreation),
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
        isActive: currentStep >= 2,
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
            isActive: currentStep >= 3,
            title: Text(L10n.of(context).groupTerminationDate),
            content: GroupTerminationDateStep(this),
          ),
        );
      case GroupType.merryGoRound:
        activeSteps.add(
          Step(
            isActive: currentStep >= 3,
            title: Text(L10n.of(context).periodicSetup),
            content: GroupPeriodicityStep(this),
          ),
        );

        activeSteps.add(
          Step(
            isActive: currentStep >= 4,
            title: Text(L10n.of(context).periodicSavingAmount),
            content: GroupSavingAmountStep(this),
          ),
        );
      default:
        activeSteps.add(
          Step(
            isActive: currentStep >= 3,
            title: Text(L10n.of(context).periodicSetup),
            content: GroupPeriodicityStep(this),
          ),
        );

        activeSteps.add(
          Step(
            isActive: currentStep >= 4,
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
