import 'package:flutter/material.dart';
import 'package:stawi/config/themes.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/new_group_type.dart';
import 'package:stawi/services/stawi/payloads/group_create_payloads.dart';
import 'package:stawi/widgets/abstract_validated_widget.dart';

class GroupTypeStep extends ValidatedFieldsWidget {
  final NewGroupTypeController controller;

  const GroupTypeStep(this.controller, {super.key});

  @override
  List<String> fieldsToValidate() {
    return ['groupType'];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            constraints: const BoxConstraints(minHeight: 40.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: FormField<GroupType>(
              validator: (_) => controller.getFieldError('groupType'),
              builder:
                  (formState) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<GroupType>(
                            value:
                                controller.payload.groupType ??
                                GroupType.grameen,
                            isExpanded: true,
                            items: [
                              DropdownMenuItem<GroupType>(
                                value: GroupType.grameen,
                                child: Text(L10n.of(context).groupTypeGrameen),
                              ),
                              DropdownMenuItem<GroupType>(
                                value: GroupType.funding,
                                child: Text(L10n.of(context).groupTypeFunding),
                              ),
                              DropdownMenuItem<GroupType>(
                                value: GroupType.voluntary,
                                child: Text(
                                  L10n.of(context).groupTypeVoluntary,
                                ),
                              ),
                              DropdownMenuItem<GroupType>(
                                value: GroupType.temporary,
                                child: Text(
                                  L10n.of(context).groupTypeTemporary,
                                ),
                              ),
                              DropdownMenuItem<GroupType>(
                                value: GroupType.merryGoRound,
                                child: Text(
                                  L10n.of(context).groupTypeMerryGoRound,
                                ),
                              ),
                            ],
                            onChanged: (GroupType? newValue) {
                              switch (newValue) {
                                case GroupType.funding:
                                  controller.setPayload(
                                    GroupCreateFundingPayload(),
                                  );
                                  controller.setGroupTypeDescription(
                                    L10n.of(
                                      context,
                                    ).groupTypeDescriptionFunding,
                                  );
                                case GroupType.temporary:
                                  controller.setPayload(
                                    GroupCreateTemporaryPayload(),
                                  );
                                  controller.setGroupTypeDescription(
                                    L10n.of(
                                      context,
                                    ).groupTypeDescriptionTemporary,
                                  );
                                case GroupType.merryGoRound:
                                  controller.setPayload(
                                    GroupCreateMerryGoRoundPayload(),
                                  );
                                  controller.setGroupTypeDescription(
                                    L10n.of(
                                      context,
                                    ).groupTypeDescriptionMerryGoRound,
                                  );
                                case GroupType.voluntary:
                                  controller.setPayload(
                                    GroupCreateVoluntaryPayload(),
                                  );
                                  controller.setGroupTypeDescription(
                                    L10n.of(
                                      context,
                                    ).groupTypeDescriptionVoluntary,
                                  );
                                default:
                                  controller.setPayload(
                                    GroupCreateDefaultPayload(),
                                  );
                                  controller.setGroupTypeDescription(
                                    L10n.of(
                                      context,
                                    ).groupTypeDescriptionDefault,
                                  );
                              }

                              // Clear any error
                              controller.clearFieldError('groupType');

                              // Generate new steps based on the group type
                              controller.setGroupCreateSteps(
                                controller.generateStepsRequired(context),
                              );
                            },
                          ),
                        ),
                      ),
                      if (formState.hasError)
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Text(
                            formState.errorText!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                    ],
                  ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        AnimatedSize(
          duration: FluffyThemes.animationDuration,
          curve: FluffyThemes.animationCurve,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 32),
            trailing: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.info_outlined),
            ),
            subtitle: Text(controller.getGroupTypeDescription(context)),
          ),
        ),
      ],
    );
  }
}
