import 'package:matrix/matrix.dart';
import 'models/matrix_events/custom_matrix_events.dart';

/// A service to handle sending custom Matrix events with typed payloads
class MatrixEventService {
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
  /// await MatrixEventService.sendCustomEvent(
  ///   client: matrix.client,
  ///   roomId: room.id,
  ///   eventContent: eventContent,
  /// );
  /// ```
  static Future<void> sendCustomEvent({
    required Client client,
    required String roomId,
    required MatrixCustomEventContent eventContent,
    String? customStateKey,
  }) async {
    // Convert the typed event content to JSON
    final content = eventContent.toJson();

    // Send the event using setRoomStateWithKey
    await client.setRoomStateWithKey(
      roomId,
      eventContent.eventType,
      customStateKey ?? eventContent.stateKey,
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
  static Future<T?> getCustomEvent<T extends MatrixCustomEventContent>({
    required Client client,
    required String roomId,
    required String eventType,
    String stateKey = '',
    T Function(Map<String, dynamic>)? fromJsonFactory,
  }) async {
    try {
      // Get the room state event
      final event = await client
          .getRoomState(roomId)
          .then(
            (events) => events.firstWhere(
              (event) => event.type == eventType && event.stateKey == stateKey,
            ),
          );

      // Return null if no event found
      if (event.content.isEmpty) {
        return null;
      }

      // If a fromJsonFactory is provided, use it to create the typed event
      if (fromJsonFactory != null) {
        return fromJsonFactory(event.content);
      }

      // Otherwise, try to infer the type based on the event type
      switch (eventType) {
        case 'im.stawi.group.create':
          return GroupCreateEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.join':
          return GroupJoinEventContent.fromJson(event.content) as T;
        case 'im.stawi.account.loan':
          return AccountLoanEventContent.fromJson(event.content) as T;
        case 'im.stawi.account.transfer':
          return AccountTransferEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.join_motion':
          return GroupJoinMotionEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.shutdown':
          return GroupShutdownEventContent.fromJson(event.content) as T;
        case 'im.stawi.account.balance':
          return AccountBalanceEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.create_abandon':
          return GroupCreateAbandonEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.join_trusted':
          return GroupJoinTrustedEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.leave_motion':
          return GroupLeaveMotionEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.remove_motion':
          return GroupRemoveMotionEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.remove_member':
          return GroupRemoveMemberEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.leave':
          return GroupLeaveEventContent.fromJson(event.content) as T;
        case 'im.stawi.group.shutdown_motion':
          return GroupShutdownMotionEventContent.fromJson(event.content) as T;
        case 'im.stawi.account.change_language':
          return AccountChangeLanguageEventContent.fromJson(event.content) as T;
        case 'im.stawi.account.loan_block':
          return AccountLoanBlockEventContent.fromJson(event.content) as T;
        case 'im.stawi.account.loan_prepay':
          return AccountLoanPrepayEventContent.fromJson(event.content) as T;
        case 'im.stawi.account.credit_score':
          return AccountCreditScoreEventContent.fromJson(event.content) as T;
        case 'im.stawi.account.manage_password':
          return AccountManagePasswordEventContent.fromJson(event.content) as T;
        default:
          return null;
      }
    } catch (e) {
      return null;
    }
  }
}
