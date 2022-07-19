import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTr;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTr, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            ElevatedButton(
              onPressed: () {
                addTr(
                    titleController.text, double.parse(amountController.text));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.purple)),
              child: const Text('Add transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
