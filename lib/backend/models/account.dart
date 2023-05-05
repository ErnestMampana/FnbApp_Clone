import 'package:flutter/material.dart';

class Account {
  String? accountType;
  double? availableBalance;
  double? balance;

  Account({
    required this.accountType,
    required this.availableBalance,
    required this.balance,
  });
  Map<String, dynamic> toMap() {
    return {
      'accountType': accountType,
      'availableBalance': availableBalance,
      'balance': balance
    };
  }

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
        accountType: json['accountType'],
        availableBalance: json['availableBalance'],
        balance: json['balance']);
  }
}
