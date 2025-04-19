import 'package:matrix/matrix.dart';
import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/default/event_type.dart';
import 'package:stawi/services/stawi/payloads/response_payloads.dart';
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
      StawiEventMessage.uploadPartition,
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
  static Future<String> setRoomStateEvent({
    required Client client,
    required String roomId,
    required BaseEventState eventState,
  }) async {
    if (eventState.eventType == null) {
      throw Exception(
        'event type of event content ${eventState.toString()} is null/not set',
      );
    }

    // Convert the typed event content to JSON
    final content = eventState.toJson();

    final stateKey = eventState.stateKey ?? "";

    // Send the event using setRoomStateWithKey
    return await client.setRoomStateWithKey(
      roomId,
      eventState.eventType!,
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
      final event = await client.getRoomStateWithKey(
        roomId,
        eventType,
        stateKey ?? "",
      );

      return fromJsonFactory(event as Map<String, dynamic>);
    } catch (e) {
      Logs().e('Error getting room state event', e);
      return null;
    }
  }
}
