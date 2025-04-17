import 'package:flutter/material.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/stawi/constants/request_commands.dart';

enum VotingMode { normal, delegated }

/// Default threshold percentage for normal voting (60%)
const int defaultThresholdPercentage = 60;

/// Minimum threshold percentage allowed (51%)
const int minThresholdPercentage = 51;

/// Maximum threshold percentage allowed (100%)
const int maxThresholdPercentage = 100;

extension VotingModeExtension on VotingMode {
  String name(BuildContext context) {
    final l10n = L10n.of(context);
    switch (this) {
      case VotingMode.normal:
        return l10n.normalVoting;
      case VotingMode.delegated:
        return l10n.delegatedVoting;
    }
  }

  String description(BuildContext context) {
    final l10n = L10n.of(context);
    switch (this) {
      case VotingMode.normal:
        return l10n.normalVotingDescription;
      case VotingMode.delegated:
        return l10n.delegatedVotingDescription;
    }
  }
}

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
