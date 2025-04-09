import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'voting_mode_model.dart';

class VotingModeController with ChangeNotifier {
  final Room room;
  bool loading = false;
  String? error;
  VotingMode _votingMode = VotingMode.normal;
  int _thresholdPercentage = defaultThresholdPercentage;

  VotingModeController({required this.room}) {
    _loadCurrentVotingMode();
  }

  VotingMode get votingMode => _votingMode;
  
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
      // Here you would typically load the current voting mode from room state
      // This is a placeholder - implement actual Matrix SDK integration
      final stateEvents = await room.client.getRoomState(room.id);
      // Try to find voting mode event, defaulting to normal if not found
      try {
        final votingModeEvent = stateEvents.firstWhere(
          (event) => event.type == 'im.stawi.voting_mode',
        );
        final mode = votingModeEvent.content['mode'] as String? ?? 'normal';
        _votingMode = mode == 'delegated' ? VotingMode.delegated : VotingMode.normal;
        
        // Load threshold percentage if available
        if (_votingMode == VotingMode.normal) {
          final threshold = votingModeEvent.content['threshold_percentage'] as int?;
          if (threshold != null && 
              threshold >= minThresholdPercentage && 
              threshold <= maxThresholdPercentage) {
            _thresholdPercentage = threshold;
          }
        }
      } catch (_) {
        // Default to normal voting mode if no event is found
        _votingMode = VotingMode.normal;
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
      // Here you would save the voting mode to room state
      // Example Matrix SDK code (implement according to your actual Matrix setup)
      final content = {
        'mode': _votingMode.name,
        'updated_at': DateTime.now().millisecondsSinceEpoch,
      };
      
      // Add threshold percentage for normal voting mode
      if (_votingMode == VotingMode.normal) {
        content['threshold_percentage'] = _thresholdPercentage;
      }
      
      await room.client.setRoomStateWithKey(
        room.id,
        'im.stawi.voting_mode',
        '',
        content,
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
