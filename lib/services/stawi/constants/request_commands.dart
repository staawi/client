/// Request types for Matrix custom events
/// Defines the standard command values used across the application
class RequestCommand {
  // Group-related commands
  static const String groupRegistration = "group_registration";
  static const String groupCreateAbandon = "group_registration_abandon";
  static const String groupJoin = "group_customer_join";
  static const String groupJoinTrusted = "group_customer_join_trusted";
  static const String groupJoinMotion = "group_join_motion";
  static const String groupRemoveMemberMotion = "group_remove_motion";
  static const String groupRemoveMember = "group_customer_remove";
  static const String groupLeave = "group_customer_leave";
  static const String groupLeaveMotion = "group_leave_motion";
  static const String groupShutdown = "group_shutdown";
  static const String groupShutdownMotion = "group_shutdown_motion";
  static const String groupUpdateVotingMode = "group_update_voting_mode";

  // Account-related commands
  static const String accountCreditScore = "customer_check_credit_score";
  static const String accountSavings = "customer_check_balance";
  static const String accountManagePassword = "customer_password_change";
  static const String accountLoanAccept = "customer_loan_accept";
  static const String accountLoanAcceptHalf = "customer_loan_accept_half";
  static const String accountLoanAcceptCustom = "customer_loan_accept_custom";
  static const String accountLoanReject = "customer_loan_reject";
  static const String accountLoanBlock = "customer_loan_block";
  static const String accountLoanPrepay = "customer_loan_prepay";
  static const String accountChangeLanguage = "customer_change_language";
  static const String accountRequestMiniStatement =
      "customer_request_mini_statement";
  static const String accountRequestFullStatement =
      "customer_request_full_statement";
  static const String accountPaymentAssist = "customer_payment_assist";
}
