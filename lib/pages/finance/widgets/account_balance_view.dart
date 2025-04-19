import 'package:flutter/material.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/services/stawi/payloads/response_payloads.dart';
import 'package:stawi/utils/formatted_number.dart';

class AccountBalanceView extends StatelessWidget {
  final LedgerAccountState ledgerState;
  final VoidCallback? onTap;

  const AccountBalanceView({super.key, required this.ledgerState, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Handle empty accounts list
    if (ledgerState.accounts.isEmpty) {
      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'No accounts available',
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
      );
    }

    // Calculate total balance
    final totalBalance = ledgerState.accounts.fold<double>(
      0,
      (sum, account) => sum + account.balance,
    );

    // Get currency from the first account or default to USD
    final currency =
        ledgerState.accounts.isNotEmpty
            ? ledgerState.accounts.first.currency
            : 'USD';

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Total balance header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    L10n.of(context).totalBalance,
                    style: theme.textTheme.titleMedium,
                  ),
                  Text(
                    FormattedNumber.formatCurrency(totalBalance, currency),
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Account list
              ...ledgerState.accounts.map(
                (account) => _buildAccountItem(context, account, theme),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountItem(
    BuildContext context,
    LedgerAccount account,
    ThemeData theme,
  ) {
    // Choose icon based on account type
    IconData icon;
    Color iconColor;

    switch (account.accountType) {
      case 'savings':
        icon = Icons.savings_outlined;
        iconColor = Colors.green;
        break;
      case 'emergency':
        icon = Icons.emergency_outlined;
        iconColor = Colors.red;
        break;
      case 'loan':
        icon = Icons.account_balance_outlined;
        iconColor = Colors.blue;
        break;
      case 'social':
        icon = Icons.people_outline;
        iconColor = Colors.purple;
        break;
      default:
        icon = Icons.account_balance_wallet_outlined;
        iconColor = theme.colorScheme.primary;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconColor, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account.name,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  account.accountType.toUpperCase(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
          Text(
            FormattedNumber.formatCurrency(account.balance, account.currency),
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
