import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/new_group_type.dart';
import 'package:stawi/pages/finance/group_settings/group_settings_controller.dart';
import 'package:stawi/pages/finance/voting_mode/voting_mode_view.dart';
import 'package:stawi/pages/finance/widgets/account_balance_view.dart';
import 'package:stawi/services/default/event_type.dart';
import 'package:stawi/services/stawi/event_service.dart';
import 'package:stawi/services/stawi/payloads/response_payloads.dart';

class ExpandableFinanceSettings extends StatefulWidget {
  final Room room;
  final Color? iconColor;

  const ExpandableFinanceSettings({
    super.key,
    required this.room,
    this.iconColor,
  });

  @override
  State<ExpandableFinanceSettings> createState() =>
      _ExpandableFinanceSettingsState();
}

class _ExpandableFinanceSettingsState extends State<ExpandableFinanceSettings> {
  bool _isExpanded = false;
  GroupDetailState? groupDetailEvent;
  LedgerAccountState? ledgerAccountState;
  bool _isLoading = false;

  void _setGroupType() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder:
          (context) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: NewGroupType(room: widget.room),
          ),
    );
  }

  void _editSavingsParameters() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder:
          (context) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: GroupSettingsController(room: widget.room).build(context),
          ),
    );
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

  Future<GroupDetailState?> _groupDetailEvent(Room room) async {
    return await StawiEventService.getRoomStateEvent(
      client: room.client,
      roomId: room.id,
      eventType: StawiEventState.groupDetail,
      fromJsonFactory: GroupDetailState.fromJson,
    );
  }

  Future<LedgerAccountState?> _fetchLedgerAccountState(Room room) async {
    print(
      'Fetching ledger account state with event type: ${StawiEventState.ledgerAccounts}',
    );
    try {
      final ledgerState = await StawiEventService.getRoomStateEvent(
        client: room.client,
        roomId: room.id,
        eventType: StawiEventState.ledgerAccounts,
        fromJsonFactory: LedgerAccountState.fromJson,
      );
      print('Ledger state fetched: ${ledgerState != null}');
      return ledgerState;
    } catch (e) {
      print('Error fetching ledger state: $e');
      return null;
    }
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final groupDetail = await _groupDetailEvent(widget.room);
      print('GroupDetail retrieved: ${groupDetail != null}');

      LedgerAccountState? ledgerAccount;
      if (groupDetail != null) {
        ledgerAccount = await _fetchLedgerAccountState(widget.room);
        print('LedgerAccount retrieved: ${ledgerAccount != null}');
        if (ledgerAccount != null) {
          print('Number of accounts: ${ledgerAccount.accounts.length}');
          print(
            'Account types: ${ledgerAccount.accounts.map((e) => e.accountType).toList()}',
          );
          print(
            'Balances: ${ledgerAccount.accounts.map((e) => e.balance).toList()}',
          );
        }
      }

      if (mounted) {
        setState(() {
          groupDetailEvent = groupDetail;
          ledgerAccountState = ledgerAccount;
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error loading data: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        // Display account balances if available and has accounts
        if (ledgerAccountState != null &&
            ledgerAccountState!.accounts.isNotEmpty)
          AccountBalanceView(
            ledgerState: ledgerAccountState!,
            onTap: () {
              setState(() {
                _isExpanded = true;
              });
            },
          ),

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
          if (groupDetailEvent == null)
            // 1. Set type of group
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: theme.scaffoldBackgroundColor,
                  foregroundColor: widget.iconColor,
                  child: const Icon(Icons.settings_outlined),
                ),
                title: Text(L10n.of(context).groupConfiguration),
                onTap: _setGroupType,
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
            ),

          if (groupDetailEvent != null) ...[
            // 2. Edit savings parameters
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: theme.scaffoldBackgroundColor,
                  foregroundColor: widget.iconColor,
                  child: const Icon(Icons.edit_outlined),
                ),
                title: Text(L10n.of(context).savingsOptions),
                onTap: _editSavingsParameters,
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
            ),

            // 3. Edit voting mode
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: theme.scaffoldBackgroundColor,
                  foregroundColor: widget.iconColor,
                  child: const Icon(Icons.how_to_vote_outlined),
                ),
                title: Text(L10n.of(context).votingMode),
                onTap: _editVotingMode,
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
            ),
          ],
        ],
      ],
    );
  }
}
