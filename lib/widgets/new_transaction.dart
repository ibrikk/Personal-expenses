import 'package:flutter/material.dart';
import 'package:personal/widgets/user_transactions.dart';
import './user_transactions.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: <
            Widget>[
          TextField(
              // onChanged: (val) => titleInput = val,
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title')),
          TextField(
              //  onChanged: (val) => amountInput = val,
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount')),
          ElevatedButton(
            onPressed: () {
              addTx(titleController.text, double.parse(amountController.text));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.purple,
              backgroundColor: Colors.transparent,
              elevation: 15.0,
            ),
            child: Text('Add Transaction'),
          )
        ]),
      ),
    );
  }
}
