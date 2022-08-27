import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal/screens/dashboard/transaction_summary.dart';
import 'package:paypal/shared/widget.dart';

import 'balance_summary.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          "Dashboard"
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            balance_summary(),

            Expanded(
                child: TransactionsSummary(),
            ),
          ],
        ),
      ),
    );
  }
}
