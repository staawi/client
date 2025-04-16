import 'package:intl/intl.dart';

/// Utility class for formatting numbers in various formats
class FormattedNumber {
  /// Formats a number as currency with the provided currency code
  static String formatCurrency(double value, String currencyCode) {
    final formatter = NumberFormat.currency(
      symbol: _getCurrencySymbol(currencyCode),
      decimalDigits: 2,
    );
    return formatter.format(value);
  }

  /// Formats a number with commas for thousands separator
  static String formatWithCommas(double value) {
    final formatter = NumberFormat('#,###.##');
    return formatter.format(value);
  }

  /// Formats a number as percentage
  static String formatPercentage(double value) {
    final formatter = NumberFormat.percentPattern();
    return formatter.format(value / 100);
  }

  /// Gets the currency symbol based on currency code
  static String _getCurrencySymbol(String currencyCode) {
    switch (currencyCode.toUpperCase()) {
      case 'USD':
        return '\$';
      case 'EUR':
        return '€';
      case 'GBP':
        return '£';
      case 'JPY':
        return '¥';
      case 'KES':
        return 'KSh';
      case 'NGN':
        return '₦';
      case 'ZAR':
        return 'R';
      case 'GHS':
        return 'GH₵';
      default:
        return currencyCode;
    }
  }
}
