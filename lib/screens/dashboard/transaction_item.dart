import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

class TransactionItem extends StatelessWidget {
  //const TransactionItem({Key? key}) : super(key: key);


  final String fullname;
  final String status;
  final String imageUrl;
  final String amount;

  TransactionItem({required this.fullname, required this.status, required this.imageUrl, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 16,),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              )
            ),
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fullname,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Payment" + status,
                    style: TextStyle(
                      color: kGreyColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
          ),
          Text(
              (status == "received" ? "+" : "-" ) + r"$" + amount + "USD",
            style: TextStyle(
              color: status == "received" ? Colors.green : Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
