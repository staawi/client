import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:stawi/services/default/event_type.dart';

import '../../../services/stawi/event_service.dart';
import '../../../services/stawi/payloads/voting_mode_event.dart';
import 'voting_mode_model.dart';

class VotingModeController with ChangeNotifier {
  final Room room;
  bool loading = false;
  String? error;
  VotingMode? _votingMode;
  int _thresholdPercentage = defaultThresholdPercentage;

  VotingModeController({required this.room}) {
    _loadCurrentVotingMode();
  }

  VotingMode? get votingMode => _votingMode;

  int get thresholdPercentage => _thresholdPercentage;

  set thresholdPercentage(int value) {
    if (value >= minThresholdPercentage && value <= maxThresholdPercentage) {
      _thresholdPercentage = value;
      notifyListeners();
    }
  }

  Future<void> _loadCurrentVotingMode() async {
    loading = true;
    notifyListeners();

    try {
      // Using our new typed event system to get the voting mode
      final votingModeEvent =
          await StawiEventService.getRoomStateEvent<VotingModeEventContent>(
            client: room.client,
            roomId: room.id,
            eventType: StawiEventMessage.groupVotingMode,
            fromJsonFactory: VotingModeEventContent.fromJson,
          );

      // If event exists, use its values
      if (votingModeEvent != null) {
        _votingMode = votingModeEvent.mode;

        // Load threshold percentage if available
        if (_votingMode == VotingMode.normal &&
            votingModeEvent.thresholdPercentage != null &&
            votingModeEvent.thresholdPercentage! >= minThresholdPercentage &&
            votingModeEvent.thresholdPercentage! <= maxThresholdPercentage) {
          _thresholdPercentage = votingModeEvent.thresholdPercentage!;
        }
      }
    } catch (e) {
      error = e.toString();
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  void setVotingMode(VotingMode mode) {
    _votingMode = mode;
    notifyListeners();
  }

  Future<bool> saveVotingMode() async {
    loading = true;
    error = null;
    notifyListeners();

    try {
      // Create a typed event content object
      final eventContent = VotingModeEventContent(
        mode: _votingMode,
        thresholdPercentage:
            _votingMode == VotingMode.normal ? _thresholdPercentage : null,
      );

      // Send the event using our service
      await StawiEventService.sendOutEvent(
        client: room.client,
        roomId: room.id,
        eventContent: eventContent,
      );

      return true;
    } catch (e) {
      error = 'Failed to save voting mode: ${e.toString()}';
      return false;
    } finally {
      loading = false;
      notifyListeners();
    }
  }
}
