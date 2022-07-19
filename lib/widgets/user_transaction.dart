import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'new shoes', amount: 69.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'new pen', amount: 12.99, date: DateTime.now())
  ];

  void _addNewTransaction(String trTitle, double trAmount) {
    final newTr = Transaction(
      id: DateTime.now().toString(),
      title: trTitle,
      amount: trAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTr);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
