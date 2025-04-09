import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:matrix/matrix.dart' as sdk;
import 'package:matrix/matrix.dart';

import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/new_group_type/new_group_type_view.dart';
import 'package:stawi/pages/finance/new_group_type/steps/finalize_group_create_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_currency_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_name_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_periodicity_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_saving_amount_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_termination_date_step.dart';
import 'package:stawi/pages/finance/new_group_type/steps/group_type_step.dart';
import 'package:stawi/requests/payload/group_create_payload.dart';
import 'package:stawi/utils/file_selector.dart';
import 'package:stawi/widgets/client_extension.dart';
import 'package:stawi/widgets/matrix.dart';

class NewGroupType extends StatefulWidget {
  final CreateGroupType createGroupType;

  const NewGroupType({this.createGroupType = CreateGroupType.group, super.key});

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

  CreateGroupType get createGroupType =>
      _createGroupType ?? widget.createGroupType;

  CreateGroupType? _createGroupType;

  void setCreateGroupType(Set<CreateGroupType> b) =>
      setState(() => _createGroupType = b.single);

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

  Future<void> _createGroup() async {
    if (!mounted) return;

    final response = await Matrix.of(context).client.sendPayload(payload);

    if (!mounted) return;
    context.go('/rooms/${payload.id}/invite');
  }

  Future<void> _createSpace() async {
    if (!mounted) return;
    final spaceId = await Matrix.of(context).client.createRoom(
      preset:
          publicGroup
              ? sdk.CreateRoomPreset.publicChat
              : sdk.CreateRoomPreset.privateChat,
      creationContent: {'type': RoomCreationTypes.mSpace},
      visibility: publicGroup ? sdk.Visibility.public : null,
      roomAliasName:
          publicGroup
              ? groupNameController.text.trim().toLowerCase().replaceAll(
                ' ',
                '_',
              )
              : null,
      name: groupNameController.text.trim(),
      powerLevelContentOverride: {'events_default': 100},
      initialState: [
        if (avatar != null)
          sdk.StateEvent(
            type: sdk.EventTypes.RoomAvatar,
            content: {'url': avatarUrl.toString()},
          ),
      ],
    );
    if (!mounted) return;
    context.pop<String>(spaceId);
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

      switch (createGroupType) {
        case CreateGroupType.group:
          await _createGroup();
        case CreateGroupType.space:
          await _createSpace();
      }
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
      Step(
        isActive: currentStep >= 1,
        title: Text(L10n.of(context).groupName),
        content: GroupNameStep(this),
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

enum CreateGroupType { group, space }
