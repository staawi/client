/// StawiEventMessage for Matrix custom events
/// Defines the standard event types used across the application
class StawiEventMessage {
  /// The configurable prefix for all message types
  static const String prefix = "im.stawi.message";

  // Group-related event types
  static const String uploadPartition = "$prefix.upload.partition";

  static const String registerGroup = "$prefix.group.registered";

  static const String groupVotingMode = "$prefix.voting.mode";
  
  static const String updateGroupSettings = "$prefix.update.group.settings";
}

/// StawiEventState for Matrix custom events
/// Defines the standard event types used across the application
class StawiEventState {
  /// The configurable prefix for all state types
  static const String prefix = "im.stawi.state";

  static const String groupDetail = "$prefix.group.detail";
  static const String ledgerAccounts = "$prefix.ledger.accounts";
}
