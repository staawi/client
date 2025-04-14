//post.dart file

import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/stawi/constants/request_commands.dart';
import 'package:stawi/services/stawi/constants/request_key.dart';

abstract class PayloadGroupCreate extends BaseEventContent {
  String? groupName;
  String? groupSecret;
  String? description;
  GroupType? groupType;
  PeriodType? periodType;
  String? groupAgent;
  String? groupCurrency;
  bool? isPublic = false;

  PayloadGroupCreate({
    super.id,
    super.dateCreated,
    this.groupName,
    this.groupSecret,
    this.description,
    this.groupType,
    this.periodType,
    this.groupAgent,
    this.groupCurrency,
    this.isPublic,
  });
}

enum GroupType { grameen, funding, temporary, merryGoRound, voluntary }

extension GroupTypeExtension on GroupType {
  // Convert enum to string
  String toJson() => name;

  // Convert string to enum
  static GroupType fromJson(String value) {
    return GroupType.values.firstWhere(
      (e) => e.name == value,
      orElse: () => GroupType.grameen, // Default if not found
    );
  }
}

class PayloadGroupCreateDefault extends PayloadGroupCreate {
  String? groupSavingDay;

  int? periodicSaving;
  int? registrationFees;

  int? groupTenure;
  int? loanTenure;
  int? loanGracePeriod;

  PayloadGroupCreateDefault({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.groupType,
    super.isPublic,
    super.groupAgent,
    super.groupCurrency,
    super.periodType,
    this.groupSavingDay,
    this.periodicSaving,
    this.registrationFees,
    this.groupTenure,
    this.loanTenure,
    this.loanGracePeriod,
  });

  factory PayloadGroupCreateDefault.fromJson(Map<String, dynamic> json) {
    return PayloadGroupCreateDefault(
      id: json[BaseRequestKey.id],
      dateCreated: json[BaseRequestKey.dateCreated],
      groupName: json[RequestKey.groupName],
      groupSecret: json[RequestKey.groupSecret],
      description: json[RequestKey.groupDescription],
      groupType: GroupTypeExtension.fromJson(json[RequestKey.groupType]),
      isPublic: json[RequestKey.groupVisibilityIsPublic],
      groupCurrency: json[RequestKey.groupCurrency],
      groupAgent: json[RequestKey.agentNumber],
      periodType: json[RequestKey.groupPeriodType],
      groupSavingDay: json[RequestKey.groupSavingDay],
      periodicSaving: json[RequestKey.groupPeriodicSaving],
      registrationFees: json[RequestKey.groupRegistrationFee],
      groupTenure: json[RequestKey.groupTenure],
      loanTenure: json[RequestKey.groupLoanTenure],
      loanGracePeriod: json[RequestKey.groupLoanGracePeriod],
    );
  }

  @override
  String get command => RequestCommand.groupRegistration;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      if (id != null) BaseRequestKey.id: id,
      if (dateCreated != null) BaseRequestKey.dateCreated: dateCreated,
      if (groupName != null) RequestKey.groupName: groupName,
      if (groupSecret != null) RequestKey.groupSecret: groupSecret,
      if (description != null) RequestKey.groupDescription: description,
      if (groupType != null) RequestKey.groupType: groupType?.toJson(),
      if (isPublic != null) RequestKey.groupVisibilityIsPublic: isPublic,
      if (groupAgent != null) RequestKey.agentNumber: groupAgent,
      if (groupCurrency != null) RequestKey.groupCurrency: groupCurrency,
      if (groupAgent != null) RequestKey.agentNumber: groupAgent,
      if (periodType != null) RequestKey.groupPeriodType: periodType,
      if (groupSavingDay != null) RequestKey.groupSavingDay: groupSavingDay,
      if (periodicSaving != null)
        RequestKey.groupPeriodicSaving: periodicSaving,
      if (registrationFees != null)
        RequestKey.groupRegistrationFee: registrationFees,
      if (groupTenure != null) RequestKey.groupTenure: groupTenure,
      if (loanTenure != null) RequestKey.groupLoanTenure: loanTenure,
      if (loanGracePeriod != null)
        RequestKey.groupLoanGracePeriod: loanGracePeriod,
    };
  }
}

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

class PayloadGroupCreateFunding extends PayloadGroupCreate {
  PayloadGroupCreateFunding({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.groupType,
    super.isPublic,
    super.groupAgent,
    super.groupCurrency,
  });

  factory PayloadGroupCreateFunding.fromJson(Map<String, dynamic> json) {
    return PayloadGroupCreateFunding(
      id: json[BaseRequestKey.id],
      dateCreated: json[BaseRequestKey.dateCreated],
      groupName: json[RequestKey.groupName],
      groupSecret: json[RequestKey.groupSecret],
      description: json[RequestKey.groupDescription],
      groupType: GroupTypeExtension.fromJson(json[RequestKey.groupType]),
      isPublic: json[RequestKey.groupVisibilityIsPublic],
      groupAgent: json[RequestKey.agentNumber],
      groupCurrency: json[RequestKey.groupCurrency],
    );
  }

  @override
  String get command => RequestCommand.groupRegistration;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      if (id != null) BaseRequestKey.id: id,
      if (dateCreated != null) BaseRequestKey.dateCreated: dateCreated,
      if (groupName != null) RequestKey.groupName: groupName,
      if (groupSecret != null) RequestKey.groupSecret: groupSecret,
      if (description != null) RequestKey.groupDescription: description,
      if (groupType != null) RequestKey.groupType: groupType?.toJson(),
      if (isPublic != null) RequestKey.groupVisibilityIsPublic: isPublic,
      if (groupAgent != null) RequestKey.agentNumber: groupAgent,
      if (groupCurrency != null) RequestKey.groupCurrency: groupCurrency,
    };
  }
}

class PayloadGroupCreateVoluntary extends PayloadGroupCreate {
  PayloadGroupCreateVoluntary({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.groupType,
    super.isPublic,
    super.groupAgent,
    super.groupCurrency,
  });

  factory PayloadGroupCreateVoluntary.fromJson(Map<String, dynamic> json) {
    return PayloadGroupCreateVoluntary(
      id: json[BaseRequestKey.id],
      dateCreated: json[BaseRequestKey.dateCreated],
      groupName: json[RequestKey.groupName],
      groupSecret: json[RequestKey.groupSecret],
      description: json[RequestKey.groupDescription],
      groupType: GroupTypeExtension.fromJson(json[RequestKey.groupType]),
      isPublic: json[RequestKey.groupVisibilityIsPublic],
      groupAgent: json[RequestKey.agentNumber],
      groupCurrency: json[RequestKey.groupCurrency],
    );
  }

  @override
  String get command => RequestCommand.groupRegistration;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      if (id != null) BaseRequestKey.id: id,
      if (dateCreated != null) BaseRequestKey.dateCreated: dateCreated,
      if (groupName != null) RequestKey.groupName: groupName,
      if (groupSecret != null) RequestKey.groupSecret: groupSecret,
      if (description != null) RequestKey.groupDescription: description,
      if (groupType != null) RequestKey.groupType: groupType?.toJson(),
      if (isPublic != null) RequestKey.groupVisibilityIsPublic: isPublic,
      if (groupAgent != null) RequestKey.agentNumber: groupAgent,
      if (groupCurrency != null) RequestKey.groupCurrency: groupCurrency,
    };
  }
}

class PayloadGroupCreateTemporary extends PayloadGroupCreate {
  DateTime? terminationDate;

  PayloadGroupCreateTemporary({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.groupType,
    super.isPublic,
    super.groupAgent,
    super.groupCurrency,
    this.terminationDate,
  });

  factory PayloadGroupCreateTemporary.fromJson(Map<String, dynamic> json) {
    return PayloadGroupCreateTemporary(
      id: json[BaseRequestKey.id],
      dateCreated: json[BaseRequestKey.dateCreated],
      groupName: json[RequestKey.groupName],
      groupSecret: json[RequestKey.groupSecret],
      description: json[RequestKey.groupDescription],
      groupType: GroupTypeExtension.fromJson(json[RequestKey.groupType]),
      isPublic: json[RequestKey.groupVisibilityIsPublic],
      groupAgent: json[RequestKey.agentNumber],
      groupCurrency: json[RequestKey.groupCurrency],
      terminationDate: json[RequestKey.groupTerminationDate],
    );
  }

  @override
  String get command => RequestCommand.groupRegistration;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      if (id != null) BaseRequestKey.id: id,
      if (dateCreated != null) BaseRequestKey.dateCreated: dateCreated,
      if (groupName != null) RequestKey.groupName: groupName,
      if (groupSecret != null) RequestKey.groupSecret: groupSecret,
      if (description != null) RequestKey.groupDescription: description,
      if (groupType != null) RequestKey.groupType: groupType?.toJson(),
      if (isPublic != null) RequestKey.groupVisibilityIsPublic: isPublic,
      if (groupAgent != null) RequestKey.agentNumber: groupAgent,
      if (groupCurrency != null) RequestKey.groupCurrency: groupCurrency,
      if (terminationDate != null)
        RequestKey.groupTerminationDate: terminationDate?.toIso8601String(),
    };
  }
}

class PayloadGroupCreateMerryGoRound extends PayloadGroupCreate {
  GroupType? groupPeriodType;
  String? groupSavingDay;

  int? periodicSaving;

  PayloadGroupCreateMerryGoRound({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.groupType,
    super.isPublic,
    super.groupAgent,
    super.groupCurrency,
    this.groupPeriodType,
    this.groupSavingDay,
    this.periodicSaving,
  });

  factory PayloadGroupCreateMerryGoRound.fromJson(Map<String, dynamic> json) {
    return PayloadGroupCreateMerryGoRound(
      id: json[BaseRequestKey.id],
      dateCreated: json[BaseRequestKey.dateCreated],
      groupName: json[RequestKey.groupName],
      groupSecret: json[RequestKey.groupSecret],
      description: json[RequestKey.groupDescription],
      groupType: GroupTypeExtension.fromJson(json[RequestKey.groupType]),
      isPublic: json[RequestKey.groupVisibilityIsPublic],
      groupAgent: json[RequestKey.agentNumber],
      groupCurrency: json[RequestKey.groupCurrency],
      groupPeriodType: json[RequestKey.groupPeriodType],
      groupSavingDay: json[RequestKey.groupSavingDay],
      periodicSaving: json[RequestKey.groupPeriodicSaving],
    );
  }

  @override
  String get command => RequestCommand.groupRegistration;

  @override
  Map<String, dynamic> contentToJson() {
    return {
      if (id != null) BaseRequestKey.id: id,
      if (dateCreated != null) BaseRequestKey.dateCreated: dateCreated,
      if (groupName != null) RequestKey.groupName: groupName,
      if (groupSecret != null) RequestKey.groupSecret: groupSecret,
      if (description != null) RequestKey.groupDescription: description,
      if (groupType != null) RequestKey.groupType: groupType?.toJson(),
      if (isPublic != null) RequestKey.groupVisibilityIsPublic: isPublic,
      if (groupAgent != null) RequestKey.agentNumber: groupAgent,
      if (groupCurrency != null) RequestKey.groupCurrency: groupCurrency,
      if (groupPeriodType != null) RequestKey.groupPeriodType: groupPeriodType,
      if (groupSavingDay != null) RequestKey.groupSavingDay: groupSavingDay,
      if (periodicSaving != null)
        RequestKey.groupPeriodicSaving: periodicSaving,
    };
  }
}
