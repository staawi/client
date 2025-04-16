import 'package:flutter/material.dart';
import 'package:stawi/l10n/l10n.dart';

/// Defines the type of a group setting
enum SettingType {
  /// A setting that can be selected from a predefined list
  selection,
  
  /// A setting that can be enabled or disabled
  toggle,
  
  /// A setting that contains a numeric value within a range
  numeric,
}

/// Defines a single setting option for selection settings
class SettingOption {
  /// The value stored in settings
  final String value;
  
  /// The display name shown to the user
  final String displayName;
  
  /// Optional description of the option
  final String? description;

  const SettingOption({
    required this.value,
    required this.displayName,
    this.description,
  });
}

/// Defines a setting that can be configured
class SettingDefinition {
  /// The key used to store this setting in the settings map
  final String key;
  
  /// The type of this setting
  final SettingType type;
  
  /// The display name shown to the user
  final String displayName;
  
  /// Optional description of the setting
  final String? description;
  
  /// Available options for selection type settings
  final List<SettingOption>? options;
  
  /// Minimum value for numeric settings
  final num? minValue;
  
  /// Maximum value for numeric settings
  final num? maxValue;
  
  /// Step size for numeric settings
  final num? step;
  
  /// Default value for this setting
  final dynamic defaultValue;
  
  /// Category this setting belongs to
  final String category;
  
  /// Icon to display with this setting
  final IconData icon;

  const SettingDefinition({
    required this.key,
    required this.type,
    required this.displayName,
    this.description,
    this.options,
    this.minValue,
    this.maxValue,
    this.step,
    required this.defaultValue,
    required this.category,
    required this.icon,
  });
  
  /// Get the display name for a value
  String getDisplayName(String value, BuildContext context) {
    if (type == SettingType.selection && options != null) {
      final option = options!.firstWhere(
        (o) => o.value == value,
        orElse: () => SettingOption(
          value: value,
          displayName: value,
        ),
      );
      return option.displayName;
    }
    return value;
  }
}

/// Class that contains definitions for all group settings
class GroupSettingsDefinitions {
  /// Get all available settings definitions
  static List<SettingDefinition> getAll(BuildContext context) {
    final l10n = L10n.of(context);
    return [
      SettingDefinition(
        key: 'loanTenure',
        type: SettingType.selection,
        displayName: l10n.loanTenure,
        description: l10n.loanTenureDescription,
        options: [
          SettingOption(value: '4', displayName: '4 ${l10n.weeks}'),
          SettingOption(value: '8', displayName: '8 ${l10n.weeks}'),
          SettingOption(value: '12', displayName: '12 ${l10n.weeks}'),
        ],
        defaultValue: '8',
        category: 'loans',
        icon: Icons.calendar_today,
      ),
      SettingDefinition(
        key: 'groupTenure',
        type: SettingType.selection,
        displayName: l10n.groupTenure,
        description: l10n.groupTenureDescription,
        options: [
          SettingOption(value: '26', displayName: '26 ${l10n.weeks} (6 ${l10n.months})'),
          SettingOption(value: '39', displayName: '39 ${l10n.weeks} (9 ${l10n.months})'),
          SettingOption(value: '52', displayName: '52 ${l10n.weeks} (1 ${l10n.year})'),
        ],
        defaultValue: '52',
        category: 'general',
        icon: Icons.access_time,
      ),
      SettingDefinition(
        key: 'interestRate',
        type: SettingType.numeric,
        displayName: l10n.interestRate,
        description: l10n.interestRateDescription,
        minValue: 0,
        maxValue: 30,
        step: 0.5,
        defaultValue: 5.0,
        category: 'loans',
        icon: Icons.percent,
      ),
      SettingDefinition(
        key: 'socialFundContribution',
        type: SettingType.numeric,
        displayName: l10n.socialFundContribution,
        description: l10n.socialFundContributionDescription,
        minValue: 0,
        maxValue: 1000,
        step: 10,
        defaultValue: 100,
        category: 'contributions',
        icon: Icons.people,
      ),
      SettingDefinition(
        key: 'allowEarlyWithdrawal',
        type: SettingType.toggle,
        displayName: l10n.allowEarlyWithdrawal,
        description: l10n.allowEarlyWithdrawalDescription,
        defaultValue: false,
        category: 'general',
        icon: Icons.exit_to_app,
      ),
      SettingDefinition(
        key: 'requireSavingsBeforeLoan',
        type: SettingType.toggle,
        displayName: l10n.requireSavingsBeforeLoan,
        description: l10n.requireSavingsBeforeLoanDescription,
        defaultValue: true,
        category: 'loans',
        icon: Icons.account_balance,
      ),
    ];
  }
  
  /// Get a specific setting definition by key
  static SettingDefinition? getByKey(String key, BuildContext context) {
    final allSettings = getAll(context);
    try {
      return allSettings.firstWhere((s) => s.key == key);
    } catch (e) {
      return null;
    }
  }
  
  /// Get all settings for a specific category
  static List<SettingDefinition> getByCategory(String category, BuildContext context) {
    final allSettings = getAll(context);
    return allSettings.where((s) => s.category == category).toList();
  }
  
  /// Get all available categories
  static List<String> getCategories(BuildContext context) {
    final allSettings = getAll(context);
    final categories = allSettings.map((s) => s.category).toSet().toList();
    categories.sort();
    return categories;
  }
}
