import 'package:flutter/cupertino.dart';
import 'package:stawi/l10n/l10n.dart';

/// Reusable form validators for Stawi application
class FormValidators {
  /// Validates that the input is not empty
  static String? requiredValidator(
    BuildContext context,
    Map<String, String?> errors,
    String fieldName,
    Object? value,
  ) {
    if (value == null || value.toString().isEmpty) {
      errors[fieldName] = L10n.of(context).errorFieldRequired(fieldName);
      return errors[fieldName];
    }
    return null;
  }

  /// Validates a numeric input field
  static String? numericValidator(
    BuildContext context,
    Map<String, String?> errors,
    String fieldName,
    String? value,
  ) {
    final err = requiredValidator(context, errors, fieldName, value);
    if (err != null) {
      return err;
    }

    if (double.tryParse(value!) == null) {
      errors[fieldName] = L10n.of(context).errorFieldShouldBeNumeric(fieldName);
      return errors[fieldName];
    }

    return null;
  }

  static String? futureDateValidator(
    BuildContext context,
    Map<String, String?> errors,
    String fieldName,
    DateTime dateTime,
  ) {
    final now = DateTime.now();
    if (dateTime.isBefore(DateTime(now.year, now.month, now.day))) {
      errors[fieldName] = L10n.of(
        context,
      ).errorFieldShouldBeInTheFuture(fieldName);
      return errors[fieldName];
    }
    return null;
  }
}
