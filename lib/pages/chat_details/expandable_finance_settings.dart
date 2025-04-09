import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matrix/matrix.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/new_group_type/new_group_type.dart';
import 'package:stawi/pages/finance/voting_mode/voting_mode_view.dart';

class ExpandableFinanceSettings extends StatefulWidget {
  final Room room;
  final Color? iconColor;

  const ExpandableFinanceSettings({
    super.key,
    required this.room,
    required this.iconColor,
  });

  @override
  State<ExpandableFinanceSettings> createState() =>
      _ExpandableFinanceSettingsState();
}

class _ExpandableFinanceSettingsState extends State<ExpandableFinanceSettings> {
  bool _isExpanded = false;

  void _setGroupType() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder:
          (context) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: const NewGroupType(),
          ),
    );
  }

  void _editSavingsParameters() {
    // Navigate to savings parameters screen
    context.push('/rooms/${widget.room.id}/details/savings_parameters');
  }

  void _editVotingMode() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder:
          (context) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: VotingModeView(room: widget.room),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: theme.scaffoldBackgroundColor,
            foregroundColor: widget.iconColor,
            child: const Icon(Icons.account_balance_outlined),
          ),
          title: Text(L10n.of(context).finance),
          trailing: Icon(
            _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          ),
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        if (_isExpanded) ...[
          // 1. Set type of group
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: theme.scaffoldBackgroundColor,
                foregroundColor: widget.iconColor,
                child: const Icon(Icons.category_outlined),
              ),
              title: Text(L10n.of(context).groupType),
              onTap: _setGroupType,
              trailing: const Icon(Icons.chevron_right_outlined),
            ),
          ),
          // 2. Edit savings parameters
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: theme.scaffoldBackgroundColor,
                foregroundColor: widget.iconColor,
                child: const Icon(Icons.savings_outlined),
              ),
              title: Text(L10n.of(context).savingsOptions),
              onTap: _editSavingsParameters,
              trailing: const Icon(Icons.chevron_right_outlined),
            ),
          ),
          // 2. Edit Group voting mode
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: theme.scaffoldBackgroundColor,
                foregroundColor: widget.iconColor,
                child: const Icon(Icons.handshake_outlined),
              ),
              title: Text(L10n.of(context).votingMode),
              onTap: _editVotingMode,
              trailing: const Icon(Icons.chevron_right_outlined),
            ),
          ),
        ],
      ],
    );
  }
}
