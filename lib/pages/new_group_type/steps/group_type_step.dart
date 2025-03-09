import 'package:chamamobile/config/themes.dart';
import 'package:chamamobile/pages/new_group_type/new_group.dart';
import 'package:chamamobile/requests/payload/group_create_payload.dart';
import 'package:flutter/material.dart';
import 'package:chamamobile/l10n/l10n.dart';

class GroupTypeStep extends StatelessWidget {
  final NewGroupController controller;

  const GroupTypeStep(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<GroupType>(
                value: controller.payload.groupType ?? GroupType.grameen,
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
                    child: Text(L10n.of(context).groupTypeVoluntary),
                  ),
                  DropdownMenuItem<GroupType>(
                    value: GroupType.temporary,
                    child: Text(L10n.of(context).groupTypeTemporary),
                  ),
                  DropdownMenuItem<GroupType>(
                    value: GroupType.merryGoRound,
                    child: Text(L10n.of(context).groupTypeMerryGoRound),
                  ),
                ],
                onChanged: (GroupType? newValue) {
                  switch (newValue) {
                    case GroupType.funding:
                      controller.setPayload(
                        PayloadGroupCreateFunding(groupType: newValue),
                      );
                      controller.setGroupTypeDescription(
                        L10n.of(context).groupTypeDescriptionFunding,
                      );
                    case GroupType.temporary:
                      controller.setPayload(
                        PayloadGroupCreateTemporary(groupType: newValue),
                      );
                      controller.setGroupTypeDescription(
                        L10n.of(context).groupTypeDescriptionTemporary,
                      );
                    case GroupType.merryGoRound:
                      controller.setPayload(
                        PayloadGroupCreateMerryGoRound(groupType: newValue),
                      );
                      controller.setGroupTypeDescription(
                        L10n.of(context).groupTypeDescriptionMerryGoRound,
                      );
                    case GroupType.voluntary:
                      controller.setPayload(
                        PayloadGroupCreateVoluntary(groupType: newValue),
                      );
                      controller.setGroupTypeDescription(
                        L10n.of(context).groupTypeDescriptionVoluntary,
                      );
                    default:
                      controller.setPayload(
                        PayloadGroupCreateDefault(groupType: newValue),
                      );
                      controller.setGroupTypeDescription(
                        L10n.of(context).groupTypeDescriptionDefault,
                      );
                  }
                  controller.setGroupCreateSteps(
                    controller.generateStepsRequired(context),
                  );
                },
              ),
            ),
          ),
        ),
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
