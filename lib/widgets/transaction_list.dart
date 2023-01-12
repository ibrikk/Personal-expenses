import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                padding: EdgeInsets.all(10),
                child: Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                  '\$${transactions[index].amount.toStringAsFixed(2)}',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      transactions[index].title),
                  Text(
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontStyle: FontStyle.italic),
                    DateFormat('yyy/MM/dd').format(transactions[index].date),
                  )
                ],
              ),
            ],
          ));
        },
      ),
    );
  }
}
