//post.dart file

import 'package:flutter/widgets.dart';
import 'package:stawi/services/stawi/payloads/default_payloads.dart';
import 'package:stawi/utils/form_validators.dart';

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

class GroupCreateDefaultPayload extends GroupCreateEventContent {
  GroupCreateDefaultPayload({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.isPublic,
    super.agentCode,
    super.groupCurrency,
    super.periodType,
    super.periodicSaving,
    super.groupSavingsDay,
    super.registrationFee,
    super.groupTenure,
    super.groupLoanTenure,
    super.groupLoanGracePeriod,
  }) {
    super.groupType = GroupType.grameen;
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

    if (affectedFields == null || affectedFields.contains('periodType')) {
      final err = FormValidators.requiredValidator(
        context,
        errors,
        'periodType',
        periodType,
      );
      if (err != null) {
        return errors;
      }
    }

    if (affectedFields == null || affectedFields.contains('periodicSaving')) {
      FormValidators.requiredValidator(
        context,
        errors,
        'periodicSaving',
        periodicSaving,
      );
    }

    return errors;
  }
}

class GroupCreateFundingPayload extends GroupCreateEventContent {
  GroupCreateFundingPayload({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.isPublic,
    super.agentCode,
    super.groupCurrency,
  }) {
    super.groupType = GroupType.funding;
  }
}

class GroupCreateVoluntaryPayload extends GroupCreateEventContent {
  GroupCreateVoluntaryPayload({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.isPublic,
    super.agentCode,
    super.groupCurrency,
  }) {
    super.groupType = GroupType.voluntary;
  }
}

class GroupCreateTemporaryPayload extends GroupCreateEventContent {
  GroupCreateTemporaryPayload({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.isPublic,
    super.agentCode,
    super.groupCurrency,
    super.terminationDate,
  }) {
    super.groupType = GroupType.temporary;
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

    if (affectedFields == null || affectedFields.contains('terminationDate')) {
      // Termination date step
      final err = FormValidators.requiredValidator(
        context,
        errors,
        'terminationDate',
        terminationDate,
      );
      if (err != null) {
        return errors;
      }

      FormValidators.futureDateValidator(
        context,
        errors,
        'terminationDate',
        terminationDate!,
      );
    }
    return errors;
  }
}

class GroupCreateMerryGoRoundPayload extends GroupCreateEventContent {
  GroupCreateMerryGoRoundPayload({
    super.id,
    super.dateCreated,
    super.groupName,
    super.groupSecret,
    super.description,
    super.isPublic,
    super.agentCode,
    super.groupCurrency,
    super.periodicSaving,
    super.periodType,
    super.groupSavingsDay,
  }) {
    super.groupType = GroupType.merryGoRound;
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

    if (affectedFields == null || affectedFields.contains('periodType')) {
      final err = FormValidators.requiredValidator(
        context,
        errors,
        'periodType',
        periodType,
      );
      if (err != null) {
        return errors;
      }
    }

    if (affectedFields == null || affectedFields.contains('periodicSaving')) {
      FormValidators.requiredValidator(
        context,
        errors,
        'periodicSaving',
        periodicSaving,
      );
    }

    return errors;
  }
}
