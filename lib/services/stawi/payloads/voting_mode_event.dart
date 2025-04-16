import 'package:stawi/pages/finance/finance.dart';
import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/stawi/constants/request_commands.dart';

/// Event content for the voting mode settings
class VotingModeEventContent extends BaseEventContent {
  final VotingMode? mode;
  final int? thresholdPercentage;

  VotingModeEventContent({required this.mode, this.thresholdPercentage});

  @override
  String get command => RequestCommand.groupUpdateVotingMode;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      'mode': mode?.name,
      if (mode == VotingMode.normal && thresholdPercentage != null)
        'threshold_percentage': thresholdPercentage,
    };
  }

  factory VotingModeEventContent.fromJson(Map<String, dynamic> json) {
    final contentJson = Map<String, dynamic>.from(json);
    final modeStr = contentJson['mode'] as String? ?? 'normal';
    final mode =
        modeStr == 'delegated' ? VotingMode.delegated : VotingMode.normal;

    return VotingModeEventContent(
      mode: mode,
      thresholdPercentage: json['threshold_percentage'] as int?,
    );
  }
}
