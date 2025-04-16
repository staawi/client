import 'package:flutter/widgets.dart';
import 'package:xid/xid.dart';

class BaseRequestKey {
  static const String id = "id";
  static const String dateCreated = "date_created";

  // Command identifier
  static const String command = "command";
}

/// Base abstract class for all custom Matrix event content
abstract class BaseEventContent {
  String? id;
  String? dateCreated;

  BaseEventContent({this.id, this.dateCreated});

  /// Converts the event content to a JSON map
  Map<String, dynamic> toJson() {
    final json = contentToJson();
    json[BaseRequestKey.command] = command;
    json[BaseRequestKey.id] = id ?? Xid().toString();
    json[BaseRequestKey.dateCreated] =
        dateCreated ?? DateTime.now().toIso8601String();
    return json;
  }

  /// Internal method to convert content fields to JSON without the command field
  Map<String, dynamic> contentToJson();

  /// The command value to use for this event
  String get command => "";

  /// Event type to be used with setRoomStateWithKey
  String? get eventType => null;

  /// Default state key used with setRoomStateWithKey
  String? get stateKey => null;

  /// Validates the data for a specific step in the group creation flow
  /// Returns a map of field errors (field name -> error message)
  Map<String, String?> validate(
    BuildContext context, {
    List<String>? affectedFields,
  }) {
    final errors = <String, String?>{};

    // Let derived classes add their specific validations
    errors.addAll(validateExtension(context, affectedFields: affectedFields));

    return errors;
  }

  /// Validates step-specific fields based on payload type
  /// Should be overridden by subclasses
  Map<String, String?> validateExtension(
    BuildContext context, {
    List<String>? affectedFields,
  }) {
    return {};
  }

  /// Validates all required fields for the entire form
  /// Returns true if all fields are valid
  bool isValid(BuildContext context, {List<String>? affectedFields}) {
    final errors = validate(context, affectedFields: affectedFields);
    return errors.isEmpty;
  }
}
