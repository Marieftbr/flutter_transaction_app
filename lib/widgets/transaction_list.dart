import '../models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
          children: transactions.map((transaction) {
        return Card(
            child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2)),
              padding: EdgeInsets.all(10),
              child: Text(
                '\$ ${transaction.amount}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  DateFormat('dd-MM-yyyy').format(transaction.date),
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            )
          ],
        ));
      }).toList()),
    );
  }
}
