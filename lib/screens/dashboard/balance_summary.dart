import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal/screens/dashboard/balance.dart';
import 'package:paypal/utils/constants.dart';

class balance_summary extends StatelessWidget {
  const balance_summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
   return Column(
     children: [
       Container(
         width: double.infinity,
         height: size.width / 2,
         margin: EdgeInsets.symmetric(vertical: 16,),
         padding: EdgeInsets.all(16,),
         decoration: BoxDecoration(
           color: kPrimaryColor,
           borderRadius: BorderRadius.all(
             Radius.circular(25),
           ),
         ),
         child: Stack(
           children: [
             Align(
               alignment: Alignment.topRight,
               child: Container(
                 height: 60,
                 width: 60,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   shape: BoxShape.circle,
                 ),
                 child: Center(
                   child: SizedBox(
                     height: 45,
                     width: 45,
                     child: Image.asset(
                       "assets/images/paypal_logo.png",
                       fit: BoxFit.fitHeight,

                     ),
                   ),
                 ),
               ),

             ),
             Align(
               alignment: Alignment.bottomLeft,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text(
                     "Available Balance",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   SizedBox(
                     height: 8,
                   ),
                   Text(
                     r" $ 1.01",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 36,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                 ],
               ),
             ),
             GestureDetector(
               onTap: (){
                 Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => Balance()),
                 );
               },
               child: Align(
                 alignment: Alignment.bottomRight,

                 child: Container(

                   height: 40,
                   width: 40,
                   child: Center(
                     // child: Icon(
                     //   color: Colors.white,
                     //   Icons.details,
                     // ),
                     child:  Transform.rotate(
                       angle: 180 * pi / 180,
                         child: Icon(Icons.details,
                           color: Colors.white,size: 18,),
                   ),
                 ),
               ),
             ),
             ),
           ],
         ),
       ),
       Text(
         "Estimatted total of all currency",
         style: TextStyle(
           color: kGreyColor,
           fontSize: 14,
           fontWeight: FontWeight.bold,
         ),
       ),
     ],
   );
  }
}
