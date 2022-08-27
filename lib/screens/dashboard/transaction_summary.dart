import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal/screens/dashboard/transaction.dart';
import 'package:paypal/screens/dashboard/transaction_item.dart';
import 'package:paypal/utils/constants.dart';

class TransactionsSummary extends StatelessWidget {
  const TransactionsSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transactions",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)
                  => Transactions()),


                  );
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: kPrimaryColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
          "Aug-20-2022",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kGreyColor,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    TransactionItem(
                        fullname: "Rebika Muleta",
                        status: "send",
                        imageUrl: "assets/images/user_0.jpg",
                        amount: " 1500",
                    ),
                    TransactionItem(
                      fullname: "Arun Raj",
                      status: "send",
                      imageUrl: "assets/images/user_1.jpg",
                      amount: "50",
                    ),
                    TransactionItem(
                      fullname: "Rosh Mahsan",
                      status: "received",
                      imageUrl: "assets/images/user_2.jpg",
                      amount: " 10",
                    ),
                    TransactionItem(
                      fullname: "sans famui",
                      status: "received",
                      imageUrl: "assets/images/user_3.jpg",
                      amount: " 1000",
                    ),
                    TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "received",
                      imageUrl: "assets/images/user_4.jpg",
                      amount: " 1000",
                    ),
                    TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "received",
                      imageUrl: "assets/images/user_5.jpg",
                      amount: " 1000",
                    ),
                    TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "received",
                      imageUrl: "assets/images/user_6.jpg",
                      amount: " 1000",
                    ),
                    TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "send",
                      imageUrl: "assets/images/user_7.jpg",
                      amount: " 1000",
                    ), TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "received",
                      imageUrl: "assets/images/user_8.jpg",
                      amount: " 1000",
                    ), TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "send",
                      imageUrl: "assets/images/user_9.jpg",
                      amount: " 1000",
                    ), TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "received",
                      imageUrl: "assets/images/user_10.jpg",
                      amount: " 1000",
                    ), TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "received",
                      imageUrl: "assets/images/user_11.jpg",
                      amount: " 1000",
                    ), TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "received",
                      imageUrl: "assets/images/user_12.jpg",
                      amount: " 1000",
                    ), TransactionItem(
                      fullname: "Rebika Muleta",
                      status: "send",
                      imageUrl: "assets/images/user_13.jpg",
                      amount: " 1000",
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
