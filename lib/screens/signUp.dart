import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal/screens/login.dart';
import 'package:paypal/screens/master.dart';
import 'package:paypal/shared/CustomField.dart';
import 'package:paypal/shared/rounded_button.dart';
import 'package:paypal/utils/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),

                    CustomField(
                        hintText: "full name",
                        iconData: Icons.person,
                        label: 'Full Name'
                    ),
                    CustomField(
                        hintText: "email",
                        iconData: Icons.email_outlined,
                        label: 'Email'
                    ),
                    CustomField(
                        hintText: "phone",
                        iconData: Icons.phone,
                        label: 'Phone No'
                    ),
                    CustomField(
                        hintText: "create password",
                        iconData: Icons.lock_outline,
                        label: 'Password'
                    ),
                    CustomField(
                        hintText: "confirm password",
                        iconData: Icons.lock_outline,
                        label: 'Confirm Password'
                    ),

                    SizedBox(
                      height: 32,
                    ),
                    RoundedButton(
                        text: "Sign Up",
                        onPress: (){}
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "By Signing Up, you agree to our terms of service policy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: kGreyColor,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(
                            "Sign In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
