/// Event types for Matrix custom events
/// Defines the standard event types used across the application
class EventType {
  /// The configurable prefix for all event types
  static const String prefix = "im.stawi";

  /// Get the full event type with prefix
  static String getFullEventType(String eventType) => "$prefix.$eventType";

  // Group-related event types
  static String get groupRegistration => getFullEventType("group.create");
  static String get groupCreateAbandon => getFullEventType("group.create_abandon");
  static String get groupJoin => getFullEventType("group.join");
  static String get groupJoinTrusted => getFullEventType("group.join_trusted");
  static String get groupJoinMotion => getFullEventType("group.join_motion");
  static String get groupRemoveMemberMotion => getFullEventType("group.remove_motion");
  static String get groupRemoveMember => getFullEventType("group.remove");
  static String get groupLeave => getFullEventType("group.leave");
  static String get groupLeaveMotion => getFullEventType("group.leave_motion");
  static String get groupShutdown => getFullEventType("group.shutdown");
  static String get groupShutdownMotion => getFullEventType("group.shutdown_motion");
  static String get groupVotingModeUpdate => getFullEventType("group.voting_mode_update");

  // Account-related event types
  static String get accountCreditScore => getFullEventType("account.credit_score");
  static String get accountSavings => getFullEventType("account.savings");
  static String get accountManagePassword => getFullEventType("account.manage_password");
  static String get accountLoanAccept => getFullEventType("account.loan_accept");
  static String get accountLoanAcceptHalf => getFullEventType("account.loan_accept_half");
  static String get accountLoanAcceptCustom => getFullEventType("account.loan_accept_custom");
  static String get accountLoanReject => getFullEventType("account.loan_reject");
  static String get accountLoanBlock => getFullEventType("account.loan_block");
  static String get accountLoanPrepay => getFullEventType("account.loan_prepay");
  static String get accountChangeLanguage => getFullEventType("account.change_language");
  static String get accountRequestMiniStatement => getFullEventType("account.request_mini_statement");
  static String get accountRequestFullStatement => getFullEventType("account.request_full_statement");
  static String get accountPaymentAssist => getFullEventType("account.payment_assist");
  
  // Additional event types
  static String get votingMode => getFullEventType("group.voting_mode");
}
