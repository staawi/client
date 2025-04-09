import 'package:flutter/material.dart';
import 'package:stawi/l10n/l10n.dart';

enum VotingMode {
  normal,
  delegated,
}

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
