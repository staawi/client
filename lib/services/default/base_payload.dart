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
  String get command;

  /// Event type to be used with setRoomStateWithKey
  String? get eventType => null;

  /// Default state key used with setRoomStateWithKey
  String? get stateKey => null;
}
