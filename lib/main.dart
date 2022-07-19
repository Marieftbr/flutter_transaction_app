import './widgets/new_transaction.dart';
import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';
import './widgets/user_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput = "";
  // String amountInput = "";
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
                color: Colors.blue,
                child: Container(width: double.infinity, child: Text('CHART!')),
                elevation: 5),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
