import 'package:flutter/material.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_settings/group_settings_controller.dart';
import 'package:stawi/services/stawi/settings_configuration.dart';

/// A view for managing group settings
class GroupSettingsView extends StatefulWidget {
  /// Controller for managing group settings
  final GroupSettingsController controller;

  /// Creates a new GroupSettingsView
  const GroupSettingsView(this.controller, {super.key});

  @override
  State<GroupSettingsView> createState() => _GroupSettingsViewState();
}

class _GroupSettingsViewState extends State<GroupSettingsView> {
  String? _selectedCategory;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_refresh);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_refresh);
    super.dispose();
  }

  void _refresh() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context).groupSettings),
        actions: [
          if (_selectedCategory != null)
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  _selectedCategory = null;
                });
              },
              tooltip: L10n.of(context).back,
            ),
        ],
      ),
      body: widget.controller.isLoading
          ? const Center(child: CircularProgressIndicator())
          : _selectedCategory == null
              ? _buildCategoriesList()
              : _buildSettingsList(),
      bottomNavigationBar: _selectedCategory != null && widget.controller.hasChanges
          ? BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: widget.controller.isLoading
                            ? null
                            : () => widget.controller.saveChanges(),
                        child: widget.controller.isLoading
                            ? const CircularProgressIndicator()
                            : Text(L10n.of(context).saveChanges),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
    );
  }

  Widget _buildCategoriesList() {
    final categories = GroupSettingsDefinitions.getCategories(context);

    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        final settings = GroupSettingsDefinitions.getByCategory(category, context);
        final categoryDisplayName = _getCategoryDisplayName(category);

        return ListTile(
          leading: Icon(_getCategoryIcon(category)),
          title: Text(categoryDisplayName),
          subtitle: Text(
            L10n.of(context).settingsCount(settings.length),
          ),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            setState(() {
              _selectedCategory = category;
            });
          },
        );
      },
    );
  }

  Widget _buildSettingsList() {
    if (_selectedCategory == null) return const SizedBox.shrink();

    final settings = GroupSettingsDefinitions.getByCategory(_selectedCategory!, context);
    final categoryDisplayName = _getCategoryDisplayName(_selectedCategory!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            categoryDisplayName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: settings.length,
            itemBuilder: (context, index) {
              final setting = settings[index];
              final currentValue = widget.controller.getSettingValue(setting.key);

              return _buildSettingTile(setting, currentValue);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSettingTile(SettingDefinition setting, dynamic currentValue) {
    switch (setting.type) {
      case SettingType.toggle:
        return SwitchListTile(
          title: Text(setting.displayName),
          subtitle: setting.description != null ? Text(setting.description!) : null,
          value: currentValue ?? setting.defaultValue,
          onChanged: (value) {
            widget.controller.updateSetting(setting.key, value);
          },
          secondary: Icon(setting.icon),
        );
      case SettingType.selection:
        return ListTile(
          leading: Icon(setting.icon),
          title: Text(setting.displayName),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (setting.description != null) Text(setting.description!),
              const SizedBox(height: 4),
              Text(
                setting.getDisplayName(
                  (currentValue ?? setting.defaultValue).toString(),
                  context,
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          trailing: const Icon(Icons.arrow_drop_down),
          onTap: () => _showSelectionDialog(setting),
        );
      case SettingType.numeric:
        return ListTile(
          leading: Icon(setting.icon),
          title: Text(setting.displayName),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (setting.description != null) Text(setting.description!),
              const SizedBox(height: 4),
              Text(
                currentValue?.toString() ?? setting.defaultValue.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          trailing: const Icon(Icons.edit),
          onTap: () => _showNumericDialog(setting),
        );
    }
  }

  void _showSelectionDialog(SettingDefinition setting) {
    if (setting.options == null || setting.options!.isEmpty) return;

    final currentValue = widget.controller.getSettingValue(setting.key) ?? setting.defaultValue;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(setting.displayName),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: setting.options!.map((option) {
                return RadioListTile<String>(
                  title: Text(option.displayName),
                  subtitle: option.description != null ? Text(option.description!) : null,
                  value: option.value,
                  groupValue: currentValue.toString(),
                  onChanged: (value) {
                    if (value != null) {
                      widget.controller.updateSetting(setting.key, value);
                      Navigator.of(context).pop();
                    }
                  },
                );
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(L10n.of(context).cancel),
            ),
          ],
        );
      },
    );
  }

  void _showNumericDialog(SettingDefinition setting) {
    final currentValue = widget.controller.getSettingValue(setting.key) ?? setting.defaultValue;
    
    showDialog(
      context: context,
      builder: (context) {
        double value = (currentValue is int) 
            ? currentValue.toDouble() 
            : (currentValue is double) 
                ? currentValue 
                : double.tryParse(currentValue.toString()) ?? setting.defaultValue;
                
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text(setting.displayName),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (setting.description != null) 
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text(setting.description!),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(setting.minValue?.toString() ?? '0'),
                      Text(setting.maxValue?.toString() ?? '100'),
                    ],
                  ),
                  Slider(
                    value: value,
                    min: setting.minValue?.toDouble() ?? 0.0,
                    max: setting.maxValue?.toDouble() ?? 100.0,
                    divisions: setting.step != null 
                        ? ((setting.maxValue ?? 100) - (setting.minValue ?? 0)) ~/ setting.step!
                        : 100,
                    label: value.toString(),
                    onChanged: (newValue) {
                      setState(() {
                        value = newValue;
                      });
                    },
                  ),
                  Text(
                    value.toString(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(L10n.of(context).cancel),
                ),
                TextButton(
                  onPressed: () {
                    // Convert to int if the step is a whole number
                    final numberValue = (setting.step?.toDouble() ?? 0) % 1 == 0
                        ? value.toInt()
                        : value;
                    widget.controller.updateSetting(setting.key, numberValue);
                    Navigator.of(context).pop();
                  },
                  child: Text(L10n.of(context).save),
                ),
              ],
            );
          }
        );
      },
    );
  }

  String _getCategoryDisplayName(String category) {
    switch (category) {
      case 'general':
        return L10n.of(context).general;
      case 'loans':
        return L10n.of(context).loans;
      case 'contributions':
        return L10n.of(context).contributions;
      default:
        return category.substring(0, 1).toUpperCase() + category.substring(1);
    }
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'general':
        return Icons.settings;
      case 'loans':
        return Icons.money;
      case 'contributions':
        return Icons.savings;
      default:
        return Icons.category;
    }
  }
}
