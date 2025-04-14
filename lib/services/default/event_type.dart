/// Event types for Matrix custom events
/// Defines the standard event types used across the application
class EventType {
  /// The configurable prefix for all event types
  static const String prefix = "im.stawi";

  // Group-related event types
  static const String uploadPartitionMessageAsPayload =
      "${prefix}upload.partition.message.as.payload";

  static const String groupRegisteredDetails =
      "${prefix}group.registered.details";

  static const String groupVotingMode = "${prefix}voting_mode";
}
