import 'custom_matrix_events.dart';
import 'event_type.dart';
import 'request_key.dart';
import '../../../pages/finance/voting_mode/voting_mode_model.dart';

/// Event content for the voting mode settings
class VotingModeEventContent extends MatrixCustomEventContent {
  final VotingMode mode;
  final int? thresholdPercentage;
  final int updatedAt;

  VotingModeEventContent({
    required this.mode,
    this.thresholdPercentage,
    required this.updatedAt,
  });

  @override
  String get eventType => EventType.getFullEventType("group.voting_mode");

  @override
  // TODO: There seems to be an import resolution issue with RequestType.groupVotingModeUpdate
  // Using the string value directly as a temporary solution
  String get command => "groupVotingModeUpdate";

  @override
  Map<String, dynamic> contentToJson() {
    return {
      'mode': mode.name,
      'updated_at': updatedAt,
      if (mode == VotingMode.normal && thresholdPercentage != null)
        'threshold_percentage': thresholdPercentage,
    };
  }

  factory VotingModeEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    final modeStr = contentJson['mode'] as String? ?? 'normal';
    final mode =
        modeStr == 'delegated' ? VotingMode.delegated : VotingMode.normal;

    return VotingModeEventContent(
      mode: mode,
      thresholdPercentage: json['threshold_percentage'] as int?,
      updatedAt: json['updated_at'] as int,
    );
  }
}
