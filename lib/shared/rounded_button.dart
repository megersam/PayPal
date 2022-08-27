import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

class RoundedButton extends StatelessWidget {
  //const RoundedButton({Key? key}) : super(key: key);
  
   final String text;
   final Function onPress;
   
   RoundedButton({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
