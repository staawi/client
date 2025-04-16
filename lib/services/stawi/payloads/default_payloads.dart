import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/default/event_type.dart';
import 'package:stawi/services/stawi/payloads/group_create_payloads.dart';
import 'package:stawi/utils/form_validators.dart';

import '../constants/request_commands.dart';
import '../constants/request_key.dart';

/// Period types for group savings
enum GroupPeriodType { weekly, biweekly, monthly }

/// Motion choices for group voting
enum GroupMotionChoice { yes, no }

enum PeriodType { daily, weekly, biweekly, monthly }

extension PeriodTypeExtension on PeriodType {
  // Convert enum to string
  String toJson() => name;

  // Convert string to enum
  static PeriodType fromJson(String value) {
    return PeriodType.values.firstWhere(
      (e) => e.name == value,
      orElse: () => PeriodType.weekly, // Default if not found
    );
  }
}

/// Event content for GROUP_CREATE command
class GroupCreateEventContent extends BaseEventContent {
  String? profileId;
  String? contactId;

  String? groupName;

  String? description;
  GroupType? groupType;

  String? groupCurrency;

  int? membersRequired;
  String? groupSecret;

  PeriodType? periodType;

  int? periodicSaving;
  int? registrationFee;
  DateTime? groupSavingsDay;

  int? groupTenure;
  int? groupLoanTenure;
  int? groupLoanGracePeriod;

  String? agentCode;

  bool? isPublic = false;

  DateTime? terminationDate;

  GroupCreateEventContent({
    super.id,
    super.dateCreated,

    this.groupName,

    this.description,
    this.groupType,

    this.profileId,
    this.contactId,
    this.membersRequired,
    this.groupSecret,

    this.groupCurrency,
    this.periodicSaving,
    this.registrationFee = 0,
    this.periodType = PeriodType.weekly,
    this.groupSavingsDay,
    this.groupTenure,
    this.groupLoanTenure,
    this.groupLoanGracePeriod,
    this.agentCode,
    this.isPublic,
    this.terminationDate,
  });

  @override
  String get command => RequestCommand.groupRegistration;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      if (profileId != null) RequestKey.profileId: profileId,
      if (contactId != null) RequestKey.contactId: contactId,
      if (membersRequired != null) RequestKey.groupMemberCount: membersRequired,

      if (groupName != null) RequestKey.groupName: groupName,
      if (description != null) RequestKey.groupDescription: description,
      if (groupSecret != null) RequestKey.groupSecret: groupSecret,

      if (groupType != null) RequestKey.groupType: groupType!.name,
      if (isPublic != null) RequestKey.groupVisibilityIsPublic: isPublic,

      if (groupCurrency != null) RequestKey.groupCurrency: groupCurrency,
      if (periodicSaving != null)
        RequestKey.groupPeriodicSaving: periodicSaving,

      if (registrationFee != null)
        RequestKey.groupRegistrationFee: registrationFee,

      if (periodType != null) RequestKey.groupPeriodType: periodType!.name,

      if (groupSavingsDay != null)
        RequestKey.groupSavingDay: groupSavingsDay?.toIso8601String(),
      if (groupTenure != null) RequestKey.groupTenure: groupTenure,
      if (groupLoanTenure != null) RequestKey.loanTenure: groupLoanTenure,
      if (groupLoanGracePeriod != null)
        RequestKey.loanGracePeriod: groupLoanGracePeriod,
      if (agentCode != null) RequestKey.agentNumber: agentCode,
      if (terminationDate != null)
        RequestKey.groupTerminationDate: terminationDate!.toIso8601String(),
    };
  }

  factory GroupCreateEventContent.fromJson(Map<String, dynamic> json) {
    return GroupCreateEventContent(
      id: json[BaseRequestKey.id] as String,
      dateCreated: json[BaseRequestKey.dateCreated] as String,
      profileId: json[RequestKey.profileId] as String,
      contactId: json[RequestKey.contactId] as String,
      membersRequired: json[RequestKey.groupMemberCount] as int,

      groupName: json[RequestKey.groupName] as String,
      groupSecret: json[RequestKey.groupSecret] as String,
      description: json[RequestKey.groupDescription] as String,

      groupType: GroupType.values.firstWhereOrNull(
        (grpTyp) => grpTyp.name == json[RequestKey.groupType],
      ),

      periodicSaving: (json[RequestKey.groupPeriodicSaving] as num).toInt(),
      registrationFee: (json[RequestKey.groupRegistrationFee] as num).toInt(),
      periodType: PeriodType.values.firstWhere(
        (e) =>
            e.name ==
            (json[RequestKey.groupPeriodType] as String? ??
                PeriodType.weekly.name),
        orElse: () => PeriodType.weekly,
      ),
      groupSavingsDay: DateTime.tryParse(
        json[RequestKey.groupSavingDay]! as String,
      ),
      groupTenure: json[RequestKey.groupTenure] as int,
      groupLoanTenure: json[RequestKey.loanTenure] as int,
      groupLoanGracePeriod: json[RequestKey.loanGracePeriod] as int,
      agentCode: json[RequestKey.agentNumber] as String?,
    );
  }

  @override
  Map<String, String?> validateExtension(
    BuildContext context, {
    List<String>? affectedFields,
  }) {
    final errors = super.validateExtension(
      context,
      affectedFields: affectedFields,
    );

    if (affectedFields == null || affectedFields.contains('groupType')) {
      final err = FormValidators.requiredValidator(
        context,
        errors,
        'groupType',
        groupType,
      );
      if (err != null) {
        return errors;
      }
    }

    if (affectedFields == null || affectedFields.contains('groupCurrency')) {
      FormValidators.requiredValidator(
        context,
        errors,
        'groupCurrency',
        groupCurrency,
      );
    }
    return errors;
  }
}

/// Event content for GROUP_JOIN command
class GroupJoinEventContent extends BaseEventContent {
  String? groupCode;
  String? customerName;
  String? customerMsisdn;
  String? customerIdNumber;

  GroupJoinEventContent({
    required this.groupCode,
    this.customerName,
    this.customerMsisdn,
    this.customerIdNumber,
  });

  @override
  String get command => RequestCommand.groupJoin;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.profileName: customerName,
      'customer_msisdn':
          customerMsisdn, // No exact key in RequestKey, maintaining existing key
      'customer_id_number': customerIdNumber, // No exact key in RequestKey
    };
  }

  factory GroupJoinEventContent.fromJson(Map<String, dynamic> json) {
    return GroupJoinEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      customerName: json[RequestKey.profileName] as String,
      customerMsisdn:
          json['customer_msisdn'] as String, // No exact key in RequestKey
      customerIdNumber:
          json['customer_id_number'] as String, // No exact key in RequestKey
    );
  }
}

/// Event content for ACCOUNT_LOAN command
class AccountLoanEventContent extends BaseEventContent {
  String groupCode;
  String? loanAction;
  String? loanId;
  double? loanAmount;
  int? loanPeriod;
  String? loanPurpose;

  AccountLoanEventContent({
    required this.groupCode,
    this.loanAction,
    this.loanId,
    this.loanAmount,
    this.loanPeriod,
    this.loanPurpose,
  });

  @override
  String get command => loanAction ?? RequestCommand.accountLoanAccept;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      if (loanId == null) RequestKey.targetXid: loanId,
      if (loanAmount == null) RequestKey.targetAmount: loanAmount,
      if (loanPeriod == null) RequestKey.loanTenure: loanPeriod,
      if (loanPurpose == null) RequestKey.reason: loanPurpose,
    };
  }
}

/// Event content for ACCOUNT_TRANSFER command
class AccountTransferEventContent extends BaseEventContent {
  String groupCode;
  double transferAmount;
  String targetProfileId;
  String targetContactId;

  String? transferReason;

  AccountTransferEventContent({
    required this.groupCode,
    required this.transferAmount,
    required this.targetProfileId,
    required this.targetContactId,
    this.transferReason,
  });

  @override
  String get command => RequestCommand.accountPaymentAssist;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.targetAmount: transferAmount,
      RequestKey.targetProfileId: targetProfileId,
      RequestKey.targetContactId: targetContactId,
      if (transferReason != null) RequestKey.reason: transferReason,
    };
  }
}

/// Event content for GROUP_JOIN_MOTION command
class GroupJoinMotionEventContent extends BaseEventContent {
  final String groupCode;
  final String groupMotionId;
  GroupMotionChoice? groupMotionChoice;

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
      if (groupMotionChoice == null)
        RequestKey.groupMotionChoice: groupMotionChoice!.name,
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

  String? shutdownReason;

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

  String? abandonReason;

  GroupCreateAbandonEventContent({required this.groupCode, this.abandonReason});

  @override
  String get eventType => StawiEventMessage.uploadPartition;

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

/// Event content for GROUP_LEAVE_MOTION command
class GroupLeaveMotionEventContent extends BaseEventContent {
  final String groupCode;
  String? groupMotionId;
  GroupMotionChoice? groupMotionChoice;

  GroupLeaveMotionEventContent({
    required this.groupCode,
    this.groupMotionId,
    this.groupMotionChoice,
  });

  @override
  String get command => RequestCommand.groupLeaveMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice!.name,
    };
  }
}

/// Event content for GROUP_REMOVE_MOTION command
class GroupRemoveMotionEventContent extends BaseEventContent {
  final String groupCode;
  String? groupMotionId;
  GroupMotionChoice? groupMotionChoice;

  GroupRemoveMotionEventContent({
    required this.groupCode,
    this.groupMotionId,
    this.groupMotionChoice,
  });

  @override
  String get command => RequestCommand.groupRemoveMemberMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice!.name,
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
  String? targetContact;

  String? targetContactId;

  String? removeReason;

  GroupRemoveMemberEventContent({
    required this.groupCode,
    this.targetContact,
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
  String? targetContact;

  String? leaveReason;

  GroupLeaveEventContent({
    required this.groupCode,
    this.targetContact,
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
  String? groupMotionId;
  GroupMotionChoice? groupMotionChoice;

  GroupShutdownMotionEventContent({
    required this.groupCode,
    this.groupMotionId,
    this.groupMotionChoice,
  });

  @override
  String get command => RequestCommand.groupShutdownMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      if (groupMotionChoice == null)
        RequestKey.groupMotionChoice: groupMotionChoice!.name,
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
  String? customerLanguage;

  AccountChangeLanguageEventContent({
    required this.groupCode,
    this.customerLanguage,
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
      customerLanguage: json[RequestKey.profileLanguage] as String,
    );
  }
}

/// Event content for ACCOUNT_LOAN_BLOCK command
class AccountLoanBlockEventContent extends BaseEventContent {
  final String groupCode;
  String? targetXid;

  String? blockReason;

  AccountLoanBlockEventContent({
    required this.groupCode,
    this.targetXid,
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

  String? loanId;

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
  String? customerId;
  String? customerPassword;
  String? customerPasswordConfirm;

  AccountManagePasswordEventContent({
    required this.groupCode,
    this.customerId,
    this.customerPassword,
    this.customerPasswordConfirm,
  });

  @override
  String get command => RequestCommand.accountManagePassword;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.profilePassword: customerPassword,
      RequestKey.profilePasswordConfirm: customerPasswordConfirm,
    };
  }

  factory AccountManagePasswordEventContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountManagePasswordEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      customerPassword: json[RequestKey.profilePassword] as String,
      customerPasswordConfirm:
          json[RequestKey.profilePasswordConfirm] as String,
    );
  }
}
