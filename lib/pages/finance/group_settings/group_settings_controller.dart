import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:stawi/pages/finance/group_settings/group_settings_view.dart';
import 'package:stawi/services/default/event_type.dart';
import 'package:stawi/services/stawi/event_service.dart';
import 'package:stawi/services/stawi/payloads/group_settings_update_content.dart';
import 'package:stawi/services/stawi/payloads/response_payloads.dart';

/// Controller for managing group settings
class GroupSettingsController extends ChangeNotifier {
  /// The Matrix room
  final Room room;

  /// Group detail state
  GroupDetailState? _groupDetailState;

  /// Original settings
  final Map<String, dynamic> _originalSettings = {};

  /// Current settings
  final Map<String, dynamic> _currentSettings = {};

  /// Loading state
  bool _isLoading = false;

  /// Error message
  String? _error;

  /// Whether there was an error
  bool get hasError => _error != null;

  /// The error message
  String? get error => _error;

  /// Whether data is being loaded
  bool get isLoading => _isLoading;

  /// Whether there are unsaved changes
  bool get hasChanges {
    if (_originalSettings.length != _currentSettings.length) return true;

    for (final key in _originalSettings.keys) {
      if (_originalSettings[key] != _currentSettings[key]) return true;
    }

    return false;
  }

  /// Creates a new GroupSettingsController
  GroupSettingsController({required this.room}) {
    _loadGroupDetailState();
  }

  /// Loads the group detail state
  Future<void> _loadGroupDetailState() async {
    if (_isLoading) return;

    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      final groupDetail =
          await StawiEventService.getRoomStateEvent<GroupDetailState>(
            client: room.client,
            roomId: room.id,
            eventType: StawiEventState.groupDetail,
            fromJsonFactory: GroupDetailState.fromJson,
          );

      if (groupDetail == null) {
        _error = 'Group details not found';
        return;
      }

      _groupDetailState = groupDetail;

      // Initialize settings
      _originalSettings.clear();
      _originalSettings.addAll(
        Map<String, dynamic>.from(groupDetail.settings!),
      );

      _currentSettings.clear();
      _currentSettings.addAll(_originalSettings);
    } catch (e) {
      _error = 'Failed to load group details: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Get a specific setting value
  dynamic getSettingValue(String key) {
    return _currentSettings[key];
  }

  /// Update a specific setting
  void updateSetting(String key, dynamic value) {
    if (value == null) {
      _currentSettings.remove(key);
    } else {
      _currentSettings[key] = value;
    }
    notifyListeners();
  }

  /// Save changes to settings
  Future<bool> saveChanges() async {
    if (_isLoading || _groupDetailState == null) return false;
    if (!hasChanges) return true;

    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      // Create settings update content
      final updateContent = GroupSettingsUpdateContent(
        groupCode: _groupDetailState!.groupCode,
        settings: Map<String, dynamic>.from(_currentSettings),
      );

      // Send the update message
      await StawiEventService.sendOutEvent(
        client: room.client,
        roomId: room.id,
        eventContent: updateContent,
      );

      // Update the group detail state
      final updatedGroupDetailState = GroupDetailState(
        id: _groupDetailState!.id,
        dateCreated: _groupDetailState!.dateCreated,
        groupCode: _groupDetailState!.groupCode,
        settings: Map<String, dynamic>.from(_currentSettings),
      );

      await StawiEventService.setRoomStateEvent(
        client: room.client,
        roomId: room.id,
        eventState: updatedGroupDetailState,
      );

      // Update local data
      _groupDetailState = updatedGroupDetailState;
      _originalSettings.clear();
      _originalSettings.addAll(_currentSettings);

      return true;
    } catch (e) {
      _error = 'Failed to save settings: $e';
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Reset all changes
  void resetChanges() {
    _currentSettings.clear();
    _currentSettings.addAll(_originalSettings);
    notifyListeners();
  }

  /// Reload group details
  Future<void> reload() async {
    await _loadGroupDetailState();
  }

  @override
  Widget build(BuildContext context) => GroupSettingsView(this);
}
