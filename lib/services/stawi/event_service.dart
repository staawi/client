import 'package:matrix/matrix.dart';
import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/default/event_type.dart';
import 'package:xid/xid.dart';

/// A service to handle sending custom stawi events with typed payloads
class StawiEventService {
  /// Sends a custom event to the Matrix server using the provided event content
  ///
  /// Returns a Future that completes when the event has been sent.
  ///
  /// Example:
  /// ```dart
  /// final eventContent = GroupCreateEventContent(
  ///   groupName: 'My Group',
  ///   customerName: 'John Doe',
  ///   // ... other required fields
  /// );
  ///
  /// await StawiEventService.sendCustomEvent(
  ///   client: matrix.client,
  ///   roomId: room.id,
  ///   eventContent: eventContent,
  /// );
  /// ```
  static Future<void> sendOutEvent({
    required Client client,
    required String roomId,
    required BaseEventContent eventContent,
  }) async {
    // Convert the typed event content to JSON
    final content = eventContent.toJson();

    final transactionId = Xid().toString();

    // Send the event using sendMessage
    await client.sendMessage(
      roomId,
      EventType.uploadPartitionMessageAsPayload,
      transactionId,
      content,
    );
  }

  /// Sends a custom event to the Matrix server using the provided event content
  ///
  /// Returns a Future that completes when the event has been sent.
  ///
  /// Example:
  /// ```dart
  /// final eventContent = GroupCreateEventContent(
  ///   groupName: 'My Group',
  ///   customerName: 'John Doe',
  ///   // ... other required fields
  /// );
  ///
  /// await StawiEventService.setRoomStateEvent(
  ///   client: matrix.client,
  ///   roomId: room.id,
  ///   eventContent: eventContent,
  /// );
  /// ```
  static Future<void> setRoomStateEvent({
    required Client client,
    required String roomId,
    required BaseEventContent eventContent,
  }) async {
    if (eventContent.eventType == null) {
      throw Exception(
        'event type of event content ${eventContent.toString()} is null/not set',
      );
    }

    // Convert the typed event content to JSON
    final content = eventContent.toJson();

    final stateKey = eventContent.stateKey ?? "";

    // Send the event using setRoomStateWithKey
    await client.setRoomStateWithKey(
      roomId,
      eventContent.eventType!,
      stateKey,
      content,
    );
  }

  /// Retrieves a typed custom event from the room state
  ///
  /// Returns null if no matching event is found.
  ///
  /// Example:
  /// ```dart
  /// final groupCreate = await MatrixEventService.getCustomEvent<GroupCreateEventContent>(
  ///   client: matrix.client,
  ///   roomId: room.id,
  ///   eventType: 'im.stawi.group.create',
  /// );
  ///
  /// if (groupCreate != null) {
  ///   print('Group name: ${groupCreate.groupName}');
  /// }
  /// ```
  static Future<T?> getRoomStateEvent<T extends BaseEventContent>({
    required Client client,
    required String roomId,
    required String eventType,
    String? stateKey,
    required T Function(Map<String, dynamic>) fromJsonFactory,
  }) async {
    try {
      // Get the room state event
      final event = await client
          .getRoomState(roomId)
          .then(
            (events) => events.firstWhere(
              (event) =>
                  event.type == eventType &&
                  (stateKey != null && event.stateKey == stateKey),
            ),
          );

      // Return null if no event found
      if (event.content.isEmpty) {
        return null;
      }

      return fromJsonFactory(event.content);
    } catch (e) {
      return null;
    }
  }
}
