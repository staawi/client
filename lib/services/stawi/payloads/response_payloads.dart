import 'package:collection/collection.dart';
import 'package:stawi/services/default/base_payload.dart';
import 'package:stawi/services/default/event_type.dart';
import 'package:stawi/services/stawi/constants/request_key.dart';
import 'package:stawi/services/stawi/payloads/group_create_payloads.dart';
import 'package:xid/xid.dart';

class GroupCode {
  String id;
  String name;
  GroupType type;

  GroupCode({required this.id, required this.name, required this.type});

  factory GroupCode.fromJson(Map<String, dynamic> json) {
    return GroupCode(
      id: json['id'],
      name: json['name'],
      type:
          GroupType.values.firstWhereOrNull((e) => e.name == json['type']) ??
          GroupType.grameen,
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'type': type.name};
}

/// Response Base Event content for any commands
abstract class BaseEventState extends BaseEventContent {
  GroupCode? groupCode;

  BaseEventState({
    required super.id,
    required super.dateCreated,
    required this.groupCode,
  });

  String getEventKey();

  @override
  String? get eventType => getEventKey();

  @override
  Map<String, dynamic> contentToJson() {
    return {
      BaseRequestKey.id: id,
      BaseRequestKey.dateCreated: dateCreated,
      RequestKey.groupCode: groupCode,
    };
  }
}

class GroupDetailState extends BaseEventState {
  Map<String, dynamic> settings;

  GroupDetailState({
    required super.id,
    required super.dateCreated,
    required super.groupCode,
    required this.settings,
  });

  @override
  String getEventKey() => StawiEventState.groupDetail;

  @override
  Map<String, dynamic> contentToJson() {
    final content = super.contentToJson();
    content["settings"] = settings;
    return content;
  }

  factory GroupDetailState.fromJson(Map<String, dynamic> json) {
    return GroupDetailState(
      id: json['id'],
      dateCreated: json['date_created'],
      groupCode: GroupCode.fromJson(json['group_code']),
      settings: json['settings'],
    );
  }
}

class LedgerAccount {
  String id;
  String name;
  String? description;
  double balance;
  String currency;
  String accountType;

  LedgerAccount({
    required this.id,
    required this.name,
    required this.balance,
    this.description,
    required this.currency,
    required this.accountType,
  });

  factory LedgerAccount.fromJson(Map<String, dynamic> json) {
    return LedgerAccount(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'],
      balance:
          (json['balance'] != null)
              ? double.tryParse(json['balance'].toString()) ?? 0.0
              : 0.0,
      currency: json['currency'] ?? 'USD',
      accountType: json['accountType'] ?? 'savings',
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'balance': balance,
    'description': description,
    'currency': currency,
    'accountType': accountType,
  };

  LedgerAccount copyWith({
    String? id,
    String? name,
    String? description,
    double? balance,
    String? currency,
    String? accountType,
  }) {
    return LedgerAccount(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      balance: balance ?? this.balance,
      currency: currency ?? this.currency,
      accountType: accountType ?? this.accountType,
    );
  }
}

class LedgerAccountState extends BaseEventState {
  final List<LedgerAccount> accounts;

  LedgerAccountState({
    required super.id,
    required super.dateCreated,
    required super.groupCode,
    required this.accounts,
  });

  @override
  String getEventKey() => StawiEventState.ledgerAccounts;

  @override
  Map<String, dynamic> contentToJson() {
    final content = super.contentToJson();
    content["accounts"] = accounts.map((account) => account.toJson()).toList();
    return content;
  }

  factory LedgerAccountState.fromJson(Map<String, dynamic> json) {
    final accountsList = json['accounts'] ?? [];
    var accounts = <LedgerAccount>[];

    if (accountsList is Map<String, dynamic>) {
      // Handle old format where accounts was a map
      accounts =
          accountsList.entries
              .map(
                (entry) =>
                    LedgerAccount.fromJson(entry.value as Map<String, dynamic>),
              )
              .toList();
    } else if (accountsList is List) {
      // Handle new format where accounts is a list
      accounts =
          accountsList
              .map(
                (item) => LedgerAccount.fromJson(item as Map<String, dynamic>),
              )
              .toList();
    }

    GroupCode? groupCode;
    try {
      groupCode =
          json['group_code'] != null
              ? GroupCode.fromJson(json['group_code'])
              : null;
    } catch (e) {
      // Handle case where group_code is invalid
    }

    return LedgerAccountState(
      id: json['id'] ?? '',
      dateCreated: json['date_created'] ?? json['dateCreated'] ?? '',
      groupCode: groupCode,
      accounts: accounts,
    );
  }

  static List<LedgerAccount> generateDefaultAccounts(String currency) {
    // Create default accounts with random balances
    return [
      LedgerAccount(
        id: Xid().toString(),
        name: 'Savings',
        balance: (100 + (DateTime.now().millisecond % 900)).toDouble(),
        currency: currency,
        accountType: 'savings',
      ),
      LedgerAccount(
        id: Xid().toString(),
        name: 'Emergency Fund',
        balance: (200 + (DateTime.now().millisecond % 800)).toDouble(),
        currency: currency,
        accountType: 'emergency',
      ),
      LedgerAccount(
        id: Xid().toString(),
        name: 'Loan Fund',
        balance: (500 + (DateTime.now().millisecond % 1500)).toDouble(),
        currency: currency,
        accountType: 'loan',
      ),
      LedgerAccount(
        id: Xid().toString(),
        name: 'Social Fund',
        balance: (300 + (DateTime.now().millisecond % 700)).toDouble(),
        currency: currency,
        accountType: 'social',
      ),
    ];
  }
}
