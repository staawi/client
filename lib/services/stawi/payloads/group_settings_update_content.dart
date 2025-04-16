import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/default/event_type.dart';
import 'package:stawi/services/stawi/payloads/response_payloads.dart';

/// Event content for updating group settings
class GroupSettingsUpdateContent extends BaseEventContent {
  /// The unique ID of the group detail to update
  final GroupCode? groupCode;

  /// The map of settings to update
  final Map<String, dynamic> settings;

  /// Creates a new GroupSettingsUpdateContent instance
  GroupSettingsUpdateContent({required this.groupCode, required this.settings});

  @override
  String get eventType => StawiEventMessage.updateGroupSettings;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      'id': id,
      'date_created': dateCreated,
      if (groupCode != null) 'group_code': groupCode!.toJson(),
      'settings': settings,
    };
  }
}
