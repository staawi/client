import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/default/event_type.dart';

import '../constants/request_commands.dart';
import '../constants/request_key.dart';

/// Period types for group savings
enum GroupPeriodType { weekly, biweekly, monthly }

/// Motion choices for group voting
enum GroupMotionChoice { yes, no }

/// Event content for GROUP_CREATE command
class GroupCreateEventContent extends BaseEventContent {
  final String groupName;
  final String customerName;
  final String customerId;
  final int membersRequired;
  final String groupSecret;
  final double groupPeriodicSaving;
  final double groupRegistrationFee;
  final GroupPeriodType groupPeriodType;
  final int groupSavingsDay;
  final int groupTenure;
  final int groupLoanTenure;
  final int groupLoanGracePeriod;
  final String? agentNumber;

  GroupCreateEventContent({
    required this.groupName,
    required this.customerName,
    required this.customerId,
    required this.membersRequired,
    required this.groupSecret,
    required this.groupPeriodicSaving,
    required this.groupRegistrationFee,
    this.groupPeriodType = GroupPeriodType.weekly,
    required this.groupSavingsDay,
    required this.groupTenure,
    required this.groupLoanTenure,
    required this.groupLoanGracePeriod,
    this.agentNumber,
  });

  @override
  String get command => RequestCommand.groupRegistration;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupName: groupName,
      RequestKey.customerName: customerName,
      RequestKey.customerId: customerId,
      RequestKey.groupMemberCount: membersRequired,
      RequestKey.groupSecret: groupSecret,
      RequestKey.groupPeriodicSaving: groupPeriodicSaving,
      RequestKey.groupRegistrationFee: groupRegistrationFee,
      RequestKey.groupPeriodType: groupPeriodType.name,
      RequestKey.groupSavingDay: groupSavingsDay,
      RequestKey.groupTenure: groupTenure,
      RequestKey.groupLoanTenure: groupLoanTenure,
      RequestKey.groupLoanGracePeriod: groupLoanGracePeriod,
      if (agentNumber != null) RequestKey.agentNumber: agentNumber,
    };
  }

  factory GroupCreateEventContent.fromJson(Map<String, dynamic> json) {
    return GroupCreateEventContent(
      groupName: json[RequestKey.groupName] as String,
      customerName: json[RequestKey.customerName] as String,
      customerId: json[RequestKey.customerId] as String,
      membersRequired: json[RequestKey.groupMemberCount] as int,
      groupSecret: json[RequestKey.groupSecret] as String,
      groupPeriodicSaving:
          (json[RequestKey.groupPeriodicSaving] as num).toDouble(),
      groupRegistrationFee:
          (json[RequestKey.groupRegistrationFee] as num).toDouble(),
      groupPeriodType: GroupPeriodType.values.firstWhere(
        (e) =>
            e.name == (json[RequestKey.groupPeriodType] as String? ?? 'WEEKLY'),
        orElse: () => GroupPeriodType.weekly,
      ),
      groupSavingsDay: json[RequestKey.groupSavingDay] as int,
      groupTenure: json[RequestKey.groupTenure] as int,
      groupLoanTenure: json[RequestKey.groupLoanTenure] as int,
      groupLoanGracePeriod: json[RequestKey.groupLoanGracePeriod] as int,
      agentNumber: json[RequestKey.agentNumber] as String?,
    );
  }
}

/// Event content for GROUP_JOIN command
class GroupJoinEventContent extends BaseEventContent {
  final String groupCode;
  final String customerName;
  final String customerMsisdn;
  final String customerIdNumber;

  GroupJoinEventContent({
    required this.groupCode,
    required this.customerName,
    required this.customerMsisdn,
    required this.customerIdNumber,
  });

  @override
  String get command => RequestCommand.groupJoin;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.customerName: customerName,
      'customer_msisdn':
          customerMsisdn, // No exact key in RequestKey, maintaining existing key
      'customer_id_number': customerIdNumber, // No exact key in RequestKey
    };
  }

  factory GroupJoinEventContent.fromJson(Map<String, dynamic> json) {
    return GroupJoinEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      customerName: json[RequestKey.customerName] as String,
      customerMsisdn:
          json['customer_msisdn'] as String, // No exact key in RequestKey
      customerIdNumber:
          json['customer_id_number'] as String, // No exact key in RequestKey
    );
  }
}

/// Event content for ACCOUNT_LOAN command
class AccountLoanEventContent extends BaseEventContent {
  final String groupCode;
  final GroupMotionChoice groupMotionChoice;
  final double groupLoanAmount;
  final int loanPeriod;
  final String loanPurpose;

  AccountLoanEventContent({
    required this.groupCode,
    required this.groupMotionChoice,
    required this.groupLoanAmount,
    required this.loanPeriod,
    required this.loanPurpose,
  });

  @override
  String get command =>
      groupMotionChoice == GroupMotionChoice.yes
          ? RequestCommand.accountLoanAccept
          : RequestCommand.accountLoanReject;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      'group_motion_choice': groupMotionChoice.name,
      'group_loan_amount': groupLoanAmount,
      'loan_period': loanPeriod,
      'loan_purpose': loanPurpose,
    };
  }

  factory AccountLoanEventContent.fromJson(Map<String, dynamic> json) {
    return AccountLoanEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      groupMotionChoice: GroupMotionChoice.values.firstWhere(
        (e) => e.name == json['group_motion_choice'] as String,
      ),
      groupLoanAmount: (json['group_loan_amount'] as num).toDouble(),
      loanPeriod: json['loan_period'] as int,
      loanPurpose: json['loan_purpose'] as String,
    );
  }
}

/// Event content for ACCOUNT_TRANSFER command
class AccountTransferEventContent extends BaseEventContent {
  final String groupCode;
  final double transferAmount;
  final String targetCustomerId;
  final String targetContact;
  final double transferFee;
  final String? transferReason;

  AccountTransferEventContent({
    required this.groupCode,
    required this.transferAmount,
    required this.targetCustomerId,
    required this.targetContact,
    required this.transferFee,
    this.transferReason,
  });

  @override
  String get command => RequestCommand.accountPaymentAssist;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      'transfer_amount': transferAmount,
      'target_customer_id': targetCustomerId,
      'target_contact': targetContact,
      'transfer_fee': transferFee,
      if (transferReason != null) 'transfer_reason': transferReason,
    };
  }

  factory AccountTransferEventContent.fromJson(Map<String, dynamic> json) {
    return AccountTransferEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      transferAmount: (json['transfer_amount'] as num).toDouble(),
      targetCustomerId: json['target_customer_id'] as String,
      targetContact: json['target_contact'] as String,
      transferFee: (json['transfer_fee'] as num).toDouble(),
      transferReason: json['transfer_reason'] as String?,
    );
  }
}

/// Event content for GROUP_JOIN_MOTION command
class GroupJoinMotionEventContent extends BaseEventContent {
  final String groupCode;
  final String groupMotionId;
  final GroupMotionChoice groupMotionChoice;

  GroupJoinMotionEventContent({
    required this.groupCode,
    required this.groupMotionId,
    required this.groupMotionChoice,
  });

  @override
  String get command => RequestCommand.groupJoinMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice.name,
    };
  }

  factory GroupJoinMotionEventContent.fromJson(Map<String, dynamic> json) {
    return GroupJoinMotionEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      groupMotionId: json[RequestKey.groupMotionId] as String,
      groupMotionChoice: GroupMotionChoice.values.firstWhere(
        (e) => e.name == json[RequestKey.groupMotionChoice] as String,
      ),
    );
  }
}

/// Event content for GROUP_SHUTDOWN command
class GroupShutdownEventContent extends BaseEventContent {
  final String groupCode;
  final String? shutdownReason;

  GroupShutdownEventContent({required this.groupCode, this.shutdownReason});

  @override
  String get command => RequestCommand.groupShutdown;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      if (shutdownReason != null) RequestKey.reason: shutdownReason,
    };
  }

  factory GroupShutdownEventContent.fromJson(Map<String, dynamic> json) {
    return GroupShutdownEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      shutdownReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for ACCOUNT_BALANCE command
class AccountBalanceEventContent extends BaseEventContent {
  final String groupCode;

  AccountBalanceEventContent({required this.groupCode});

  @override
  String get command => RequestCommand.accountSavings;

  @override
  Map<String, dynamic> contentToJson() {
    return {RequestKey.groupCode: groupCode};
  }

  factory AccountBalanceEventContent.fromJson(Map<String, dynamic> json) {
    return AccountBalanceEventContent(
      groupCode: json[RequestKey.groupCode] as String,
    );
  }
}

/// Event content for GROUP_CREATE_ABANDON command
class GroupCreateAbandonEventContent extends BaseEventContent {
  final String groupCode;
  final String? abandonReason;

  GroupCreateAbandonEventContent({required this.groupCode, this.abandonReason});

  @override
  String get eventType => EventType.uploadPartitionMessageAsPayload;

  @override
  String get command => RequestCommand.groupCreateAbandon;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      if (abandonReason != null) RequestKey.reason: abandonReason,
    };
  }

  factory GroupCreateAbandonEventContent.fromJson(Map<String, dynamic> json) {
    return GroupCreateAbandonEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      abandonReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for GROUP_JOIN_TRUSTED command
class GroupJoinTrustedEventContent extends BaseEventContent {
  final String groupCode;
  final String trustedMember;
  final String customerName;
  final String customerMsisdn;
  final String customerIdNumber;

  GroupJoinTrustedEventContent({
    required this.groupCode,
    required this.trustedMember,
    required this.customerName,
    required this.customerMsisdn,
    required this.customerIdNumber,
  });

  @override
  String get command => RequestCommand.groupJoinTrusted;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.targetProfile: trustedMember,
      RequestKey.customerName: customerName,
      RequestKey.customerContact: customerMsisdn,
      RequestKey.customerId: customerIdNumber,
      RequestKey.customerIdType: customerIdNumber,
    };
  }

  factory GroupJoinTrustedEventContent.fromJson(Map<String, dynamic> json) {
    return GroupJoinTrustedEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      trustedMember: json[RequestKey.targetProfile] as String,
      customerName: json[RequestKey.customerName] as String,
      customerMsisdn: json[RequestKey.customerContact] as String,
      customerIdNumber: json[RequestKey.customerId] as String,
    );
  }
}

/// Event content for GROUP_LEAVE_MOTION command
class GroupLeaveMotionEventContent extends BaseEventContent {
  final String groupCode;
  final String groupMotionId;
  final GroupMotionChoice groupMotionChoice;

  GroupLeaveMotionEventContent({
    required this.groupCode,
    required this.groupMotionId,
    required this.groupMotionChoice,
  });

  @override
  String get command => RequestCommand.groupLeaveMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice.name,
    };
  }

  factory GroupLeaveMotionEventContent.fromJson(Map<String, dynamic> json) {
    return GroupLeaveMotionEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      groupMotionId: json[RequestKey.groupMotionId] as String,
      groupMotionChoice: GroupMotionChoice.values.firstWhere(
        (e) => e.name == json[RequestKey.groupMotionChoice] as String,
      ),
    );
  }
}

/// Event content for GROUP_REMOVE_MOTION command
class GroupRemoveMotionEventContent extends BaseEventContent {
  final String groupCode;
  final String groupMotionId;
  final GroupMotionChoice groupMotionChoice;

  GroupRemoveMotionEventContent({
    required this.groupCode,
    required this.groupMotionId,
    required this.groupMotionChoice,
  });

  @override
  String get command => RequestCommand.groupRemoveMemberMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice.name,
    };
  }

  factory GroupRemoveMotionEventContent.fromJson(Map<String, dynamic> json) {
    return GroupRemoveMotionEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      groupMotionId: json[RequestKey.groupMotionId] as String,
      groupMotionChoice: GroupMotionChoice.values.firstWhere(
        (e) => e.name == json[RequestKey.groupMotionChoice] as String,
      ),
    );
  }
}

/// Event content for GROUP_REMOVE_MEMBER command
class GroupRemoveMemberEventContent extends BaseEventContent {
  final String groupCode;
  final String targetContact;
  final String? targetContactId;
  final String? removeReason;

  GroupRemoveMemberEventContent({
    required this.groupCode,
    required this.targetContact,
    this.targetContactId,
    this.removeReason,
  });

  @override
  String get command => RequestCommand.groupRemoveMember;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.targetContact: targetContact,
      if (targetContactId != null) RequestKey.targetContactId: targetContactId,
      if (removeReason != null) RequestKey.reason: removeReason,
    };
  }

  factory GroupRemoveMemberEventContent.fromJson(Map<String, dynamic> json) {
    return GroupRemoveMemberEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      targetContact: json[RequestKey.targetContact] as String,
      targetContactId: json[RequestKey.targetContactId] as String?,
      removeReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for GROUP_LEAVE command
class GroupLeaveEventContent extends BaseEventContent {
  final String groupCode;
  final String targetContact;
  final String? leaveReason;

  GroupLeaveEventContent({
    required this.groupCode,
    required this.targetContact,
    this.leaveReason,
  });

  @override
  String get command => RequestCommand.groupLeave;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.targetContact: targetContact,
      if (leaveReason != null) RequestKey.reason: leaveReason,
    };
  }

  factory GroupLeaveEventContent.fromJson(Map<String, dynamic> json) {
    return GroupLeaveEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      targetContact: json[RequestKey.targetContact] as String,
      leaveReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for GROUP_SHUTDOWN_MOTION command
class GroupShutdownMotionEventContent extends BaseEventContent {
  final String groupCode;
  final String groupMotionId;
  final GroupMotionChoice groupMotionChoice;

  GroupShutdownMotionEventContent({
    required this.groupCode,
    required this.groupMotionId,
    required this.groupMotionChoice,
  });

  @override
  String get command => RequestCommand.groupShutdownMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice.name,
    };
  }

  factory GroupShutdownMotionEventContent.fromJson(Map<String, dynamic> json) {
    return GroupShutdownMotionEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      groupMotionId: json[RequestKey.groupMotionId] as String,
      groupMotionChoice: GroupMotionChoice.values.firstWhere(
        (e) => e.name == json[RequestKey.groupMotionChoice] as String,
      ),
    );
  }
}

/// Event content for ACCOUNT_CHANGE_LANGUAGE command
class AccountChangeLanguageEventContent extends BaseEventContent {
  final String groupCode;
  final String customerLanguage;

  AccountChangeLanguageEventContent({
    required this.groupCode,
    required this.customerLanguage,
  });

  @override
  String get command => RequestCommand.accountChangeLanguage;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      'customer_language': customerLanguage,
    };
  }

  factory AccountChangeLanguageEventContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountChangeLanguageEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      customerLanguage: json[RequestKey.customerLanguage] as String,
    );
  }
}

/// Event content for ACCOUNT_LOAN_BLOCK command
class AccountLoanBlockEventContent extends BaseEventContent {
  final String groupCode;
  final String targetXid;
  final String? blockReason;

  AccountLoanBlockEventContent({
    required this.groupCode,
    required this.targetXid,
    this.blockReason,
  });

  @override
  String get command => RequestCommand.accountLoanBlock;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.targetXid: targetXid,
      if (blockReason != null) RequestKey.reason: blockReason,
    };
  }

  factory AccountLoanBlockEventContent.fromJson(Map<String, dynamic> json) {
    return AccountLoanBlockEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      targetXid: json[RequestKey.targetXid] as String,
      blockReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for ACCOUNT_LOAN_PREPAY command
class AccountLoanPrepayEventContent extends BaseEventContent {
  final String groupCode;
  final double? prepaymentAmount;
  final String? loanId;

  AccountLoanPrepayEventContent({
    required this.groupCode,
    this.prepaymentAmount,
    this.loanId,
  });

  @override
  String get command => RequestCommand.accountLoanPrepay;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      if (prepaymentAmount != null) RequestKey.targetAmount: prepaymentAmount,
      if (loanId != null) RequestKey.targetXid: loanId,
    };
  }

  factory AccountLoanPrepayEventContent.fromJson(Map<String, dynamic> json) {
    return AccountLoanPrepayEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      prepaymentAmount:
          json[RequestKey.targetAmount] != null
              ? (json[RequestKey.targetAmount] as num).toDouble()
              : null,
      loanId: json[RequestKey.targetXid] as String?,
    );
  }
}

/// Event content for ACCOUNT_CREDIT_SCORE command
class AccountCreditScoreEventContent extends BaseEventContent {
  final String groupCode;

  AccountCreditScoreEventContent({required this.groupCode});

  @override
  String get command => RequestCommand.accountCreditScore;

  @override
  Map<String, dynamic> contentToJson() {
    return {RequestKey.groupCode: groupCode};
  }

  factory AccountCreditScoreEventContent.fromJson(Map<String, dynamic> json) {
    return AccountCreditScoreEventContent(
      groupCode: json[RequestKey.groupCode] as String,
    );
  }
}

/// Event content for ACCOUNT_MANAGE_PASSWORD command
class AccountManagePasswordEventContent extends BaseEventContent {
  final String groupCode;
  final String customerId;
  final String customerPassword;
  final String customerPasswordConfirm;

  AccountManagePasswordEventContent({
    required this.groupCode,
    required this.customerId,
    required this.customerPassword,
    required this.customerPasswordConfirm,
  });

  @override
  String get command => RequestCommand.accountManagePassword;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.customerId: customerId,
      RequestKey.customerPassword: customerPassword,
      RequestKey.customerPasswordConfirm: customerPasswordConfirm,
    };
  }

  factory AccountManagePasswordEventContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountManagePasswordEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      customerId: json[RequestKey.customerId] as String,
      customerPassword: json[RequestKey.customerPassword] as String,
      customerPasswordConfirm:
          json[RequestKey.customerPasswordConfirm] as String,
    );
  }
}
