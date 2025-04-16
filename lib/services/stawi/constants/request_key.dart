import 'package:stawi/services/default/base_payload.dart';

/// Request keys for Matrix custom events
/// Defines the standard field name constants used across Matrix event content
class RequestKey extends BaseRequestKey {
  // Contact/member information
  static const String contactDetail = "contact";
  static const String contactId = "contact_id";
  static const String profileId = "profile_id";
  static const String profile = "profile";

  static const String reason = "reason";

  static const String groupType = "group_type";
  static const String groupVisibilityIsPublic = "group_visibility_is_public";
  static const String groupName = "group_name";
  static const String groupDescription = "group_description";
  static const String groupCode = "group_code";

  static const String groupSecret = "group_secret";

  static const String groupTenure = "group_tenure";
  static const String groupMemberCount = "group_member_count";
  static const String groupSavingDay = "group_savings_day";
  static const String groupPeriodicSavingsPlan = "group_periodic_savings_plan";
  static const String groupRegistrationFee = "group_registration_fee";
  static const String groupPeriodType = "group_period_type";
  static const String groupPeriodicSaving = "group_periodic_saving";
  static const String groupCurrency = "group_currency";
  static const String groupTerminationDate = "group_termination_date";
  static const String groupMotionId = "group_motion_id";
  static const String groupMotionChoice = "group_motion_choice";

  // Target Contact/member information
  static const String targetContact = "target_contact";
  static const String targetContactId = "target_contact_id";
  static const String targetProfileId = "target_profile_id";
  static const String targetProfile = "target_profile";

  static const String loanTenure = "loan_tenure";
  static const String loanGracePeriod = "loan_grace_period";

  // Customer information
  static const String profileTitle = "profile_title";
  static const String profileName = "profile_name";
  static const String profileIdType = "profile_id_type";
  static const String profilePassword = "profile_password";
  static const String profilePasswordConfirm = "profile_password_confirm";
  static const String profileLanguage = "lang";
  static const String profileBirthDate = "profile_birthdate";
  static const String profileAddress = "profile_address";

  // Custom loan information
  static const String customLoanAcceptedAmount = "custom_loan_accepted_amount";

  // Language information
  static const String languageCode = "code";
  static const String languageName = "name";

  // Agent information
  static const String agentNumber = "agent_number";

  // Target information
  static const String targetAmount = "target_amount";
  static const String targetCurrency = "target_currency";
  static const String target = "target";
  static const String targetXid = "target_xid";

  // Miscellaneous
  static const String details = "details";
  static const String initiator = "initiator";
}
