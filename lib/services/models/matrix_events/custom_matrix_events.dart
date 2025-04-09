import 'request_type.dart';
import 'request_key.dart';
import 'event_type.dart';

/// Base abstract class for all custom Matrix event content
abstract class MatrixCustomEventContent {
  /// Converts the event content to a JSON map
  Map<String, dynamic> toJson() {
    final json = contentToJson();
    json[RequestKey.command] = command;
    return json;
  }

  /// Internal method to convert content fields to JSON without the command field
  Map<String, dynamic> contentToJson();

  /// The command value to use for this event
  String get command;

  /// Event type used with setRoomStateWithKey
  String get eventType;

  /// Default state key used with setRoomStateWithKey
  String get stateKey => '';
}

/// Period types for group savings
enum GroupPeriodType { weekly, biweekly, monthly }

/// Motion choices for group voting
enum GroupMotionChoice { yes, no }

/// Event content for GROUP_CREATE command
class GroupCreateEventContent extends MatrixCustomEventContent {
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
  String get eventType => EventType.groupRegistration;

  @override
  String get command => RequestType.groupRegistration;

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
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class GroupJoinEventContent extends MatrixCustomEventContent {
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
  String get eventType => EventType.groupJoin;

  @override
  String get command => RequestType.groupJoin;

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
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class AccountLoanEventContent extends MatrixCustomEventContent {
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
  String get eventType => EventType.accountLoanAccept;

  @override
  String get command =>
      groupMotionChoice == GroupMotionChoice.yes
          ? RequestType.accountLoanAccept
          : RequestType.accountLoanReject;

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
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class AccountTransferEventContent extends MatrixCustomEventContent {
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
  String get eventType => EventType.getFullEventType("account.transfer");

  @override
  String get command => RequestType.accountPaymentAssist;

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
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class GroupJoinMotionEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String groupMotionId;
  final GroupMotionChoice groupMotionChoice;

  GroupJoinMotionEventContent({
    required this.groupCode,
    required this.groupMotionId,
    required this.groupMotionChoice,
  });

  @override
  String get eventType => EventType.groupJoinMotion;

  @override
  String get command => RequestType.groupJoinMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice.name,
    };
  }

  factory GroupJoinMotionEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class GroupShutdownEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String? shutdownReason;

  GroupShutdownEventContent({required this.groupCode, this.shutdownReason});

  @override
  String get eventType => EventType.groupShutdown;

  @override
  String get command => RequestType.groupShutdown;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      if (shutdownReason != null) RequestKey.reason: shutdownReason,
    };
  }

  factory GroupShutdownEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return GroupShutdownEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      shutdownReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for ACCOUNT_BALANCE command
class AccountBalanceEventContent extends MatrixCustomEventContent {
  final String groupCode;

  AccountBalanceEventContent({required this.groupCode});

  @override
  String get eventType => EventType.accountSavings;

  @override
  String get command => RequestType.accountSavings;

  @override
  Map<String, dynamic> contentToJson() {
    return {RequestKey.groupCode: groupCode};
  }

  factory AccountBalanceEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return AccountBalanceEventContent(
      groupCode: json[RequestKey.groupCode] as String,
    );
  }
}

/// Event content for GROUP_CREATE_ABANDON command
class GroupCreateAbandonEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String? abandonReason;

  GroupCreateAbandonEventContent({required this.groupCode, this.abandonReason});

  @override
  String get eventType => EventType.groupCreateAbandon;

  @override
  String get command => RequestType.groupCreateAbandon;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      if (abandonReason != null) RequestKey.reason: abandonReason,
    };
  }

  factory GroupCreateAbandonEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return GroupCreateAbandonEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      abandonReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for GROUP_JOIN_TRUSTED command
class GroupJoinTrustedEventContent extends MatrixCustomEventContent {
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
  String get eventType => EventType.groupJoinTrusted;

  @override
  String get command => RequestType.groupJoinTrusted;

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
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class GroupLeaveMotionEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String groupMotionId;
  final GroupMotionChoice groupMotionChoice;

  GroupLeaveMotionEventContent({
    required this.groupCode,
    required this.groupMotionId,
    required this.groupMotionChoice,
  });

  @override
  String get eventType => EventType.groupLeaveMotion;

  @override
  String get command => RequestType.groupLeaveMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice.name,
    };
  }

  factory GroupLeaveMotionEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class GroupRemoveMotionEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String groupMotionId;
  final GroupMotionChoice groupMotionChoice;

  GroupRemoveMotionEventContent({
    required this.groupCode,
    required this.groupMotionId,
    required this.groupMotionChoice,
  });

  @override
  String get eventType => EventType.groupRemoveMemberMotion;

  @override
  String get command => RequestType.groupRemoveMemberMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice.name,
    };
  }

  factory GroupRemoveMotionEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class GroupRemoveMemberEventContent extends MatrixCustomEventContent {
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
  String get eventType => EventType.groupRemoveMember;

  @override
  String get command => RequestType.groupRemoveMember;

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
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return GroupRemoveMemberEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      targetContact: json[RequestKey.targetContact] as String,
      targetContactId: json[RequestKey.targetContactId] as String?,
      removeReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for GROUP_LEAVE command
class GroupLeaveEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String targetContact;
  final String? leaveReason;

  GroupLeaveEventContent({
    required this.groupCode,
    required this.targetContact,
    this.leaveReason,
  });

  @override
  String get eventType => EventType.groupLeave;

  @override
  String get command => RequestType.groupLeave;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.targetContact: targetContact,
      if (leaveReason != null) RequestKey.reason: leaveReason,
    };
  }

  factory GroupLeaveEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return GroupLeaveEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      targetContact: json[RequestKey.targetContact] as String,
      leaveReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for GROUP_SHUTDOWN_MOTION command
class GroupShutdownMotionEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String groupMotionId;
  final GroupMotionChoice groupMotionChoice;

  GroupShutdownMotionEventContent({
    required this.groupCode,
    required this.groupMotionId,
    required this.groupMotionChoice,
  });

  @override
  String get eventType => EventType.groupShutdownMotion;

  @override
  String get command => RequestType.groupShutdownMotion;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.groupMotionId: groupMotionId,
      RequestKey.groupMotionChoice: groupMotionChoice.name,
    };
  }

  factory GroupShutdownMotionEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class AccountChangeLanguageEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String customerLanguage;

  AccountChangeLanguageEventContent({
    required this.groupCode,
    required this.customerLanguage,
  });

  @override
  String get eventType => EventType.accountChangeLanguage;

  @override
  String get command => RequestType.accountChangeLanguage;

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
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return AccountChangeLanguageEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      customerLanguage: json[RequestKey.customerLanguage] as String,
    );
  }
}

/// Event content for ACCOUNT_LOAN_BLOCK command
class AccountLoanBlockEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final String targetXid;
  final String? blockReason;

  AccountLoanBlockEventContent({
    required this.groupCode,
    required this.targetXid,
    this.blockReason,
  });

  @override
  String get eventType => EventType.accountLoanBlock;

  @override
  String get command => RequestType.accountLoanBlock;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      RequestKey.targetXid: targetXid,
      if (blockReason != null) RequestKey.reason: blockReason,
    };
  }

  factory AccountLoanBlockEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return AccountLoanBlockEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      targetXid: json[RequestKey.targetXid] as String,
      blockReason: json[RequestKey.reason] as String?,
    );
  }
}

/// Event content for ACCOUNT_LOAN_PREPAY command
class AccountLoanPrepayEventContent extends MatrixCustomEventContent {
  final String groupCode;
  final double? prepaymentAmount;
  final String? loanId;

  AccountLoanPrepayEventContent({
    required this.groupCode,
    this.prepaymentAmount,
    this.loanId,
  });

  @override
  String get eventType => EventType.accountLoanPrepay;

  @override
  String get command => RequestType.accountLoanPrepay;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      RequestKey.groupCode: groupCode,
      if (prepaymentAmount != null) RequestKey.targetAmount: prepaymentAmount,
      if (loanId != null) RequestKey.targetXid: loanId,
    };
  }

  factory AccountLoanPrepayEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

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
class AccountCreditScoreEventContent extends MatrixCustomEventContent {
  final String groupCode;

  AccountCreditScoreEventContent({required this.groupCode});

  @override
  String get eventType => EventType.accountCreditScore;

  @override
  String get command => RequestType.accountCreditScore;

  @override
  Map<String, dynamic> contentToJson() {
    return {RequestKey.groupCode: groupCode};
  }

  factory AccountCreditScoreEventContent.fromJson(Map<String, dynamic> json) {
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return AccountCreditScoreEventContent(
      groupCode: json[RequestKey.groupCode] as String,
    );
  }
}

/// Event content for ACCOUNT_MANAGE_PASSWORD command
class AccountManagePasswordEventContent extends MatrixCustomEventContent {
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
  String get eventType => EventType.accountManagePassword;

  @override
  String get command => RequestType.accountManagePassword;

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
    // Remove command field if present to avoid duplicate processing
    final contentJson = Map<String, dynamic>.from(json);
    contentJson.remove(RequestKey.command);

    return AccountManagePasswordEventContent(
      groupCode: json[RequestKey.groupCode] as String,
      customerId: json[RequestKey.customerId] as String,
      customerPassword: json[RequestKey.customerPassword] as String,
      customerPasswordConfirm:
          json[RequestKey.customerPasswordConfirm] as String,
    );
  }
}
