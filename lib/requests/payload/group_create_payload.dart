//post.dart file

import 'package:stawi/requests/keys.dart';
import 'package:stawi/requests/payload/base_payload.dart';

abstract class PayloadGroupCreate extends Payload {
  String? groupName;
  String? groupSecret;
  String? description;
  GroupType? groupType;
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
  GroupType? groupPeriodType;
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
    this.groupPeriodType,
    this.groupSavingDay,
    this.periodicSaving,
    this.registrationFees,
    this.groupTenure,
    this.loanTenure,
    this.loanGracePeriod,
  });

  factory PayloadGroupCreateDefault.fromJson(Map<String, dynamic> json) {
    return PayloadGroupCreateDefault(
      id: json[RequestKey.id],
      dateCreated: json[RequestKey.dateCreated],
      groupName: json[RequestKey.groupName],
      groupSecret: json[RequestKey.groupSecret],
      description: json[RequestKey.groupDescription],
      groupType: GroupTypeExtension.fromJson(json[RequestKey.groupType]),
      isPublic: json[RequestKey.groupVisibilityIsPublic],
      groupCurrency: json[RequestKey.groupCurrency],
      groupAgent: json[RequestKey.agentNumber],
      groupPeriodType: json[RequestKey.groupPeriodType],
      groupSavingDay: json[RequestKey.groupSavingDay],
      periodicSaving: json[RequestKey.groupPeriodicSaving],
      registrationFees: json[RequestKey.groupRegistrationFee],
      groupTenure: json[RequestKey.groupTenure],
      loanTenure: json[RequestKey.groupLoanTenure],
      loanGracePeriod: json[RequestKey.groupLoanGracePeriod],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) RequestKey.id: id,
      if (dateCreated != null) RequestKey.dateCreated: dateCreated,
      if (groupName != null) RequestKey.groupName: groupName,
      if (groupSecret != null) RequestKey.groupSecret: groupSecret,
      if (description != null) RequestKey.groupDescription: description,
      if (groupType != null) RequestKey.groupType: groupType?.toJson(),
      if (isPublic != null) RequestKey.groupVisibilityIsPublic: isPublic,
      if (groupAgent != null) RequestKey.agentNumber: groupAgent,
      if (groupCurrency != null) RequestKey.groupCurrency: groupCurrency,
      if (groupAgent != null) RequestKey.agentNumber: groupAgent,
      if (groupPeriodType != null) RequestKey.groupPeriodType: groupPeriodType,
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
      id: json[RequestKey.id],
      dateCreated: json[RequestKey.dateCreated],
      groupName: json[RequestKey.groupName],
      groupSecret: json[RequestKey.groupSecret],
      description: json[RequestKey.groupDescription],
      groupType: GroupTypeExtension.fromJson(json[RequestKey.groupType]),
      isPublic: json[RequestKey.groupVisibilityIsPublic],
      groupAgent: json[RequestKey.agentNumber],
      groupCurrency: json[RequestKey.groupCurrency],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) RequestKey.id: id,
      if (dateCreated != null) RequestKey.dateCreated: dateCreated,
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
      id: json[RequestKey.id],
      dateCreated: json[RequestKey.dateCreated],
      groupName: json[RequestKey.groupName],
      groupSecret: json[RequestKey.groupSecret],
      description: json[RequestKey.groupDescription],
      groupType: GroupTypeExtension.fromJson(json[RequestKey.groupType]),
      isPublic: json[RequestKey.groupVisibilityIsPublic],
      groupAgent: json[RequestKey.agentNumber],
      groupCurrency: json[RequestKey.groupCurrency],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) RequestKey.id: id,
      if (dateCreated != null) RequestKey.dateCreated: dateCreated,
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
      id: json[RequestKey.id],
      dateCreated: json[RequestKey.dateCreated],
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

  Map<String, dynamic> toJson() {
    return {
      if (id != null) RequestKey.id: id,
      if (dateCreated != null) RequestKey.dateCreated: dateCreated,
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
      id: json[RequestKey.id],
      dateCreated: json[RequestKey.dateCreated],
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

  Map<String, dynamic> toJson() {
    return {
      if (id != null) RequestKey.id: id,
      if (dateCreated != null) RequestKey.dateCreated: dateCreated,
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
