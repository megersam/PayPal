import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal/screens/master.dart';
import 'package:paypal/screens/signUp.dart';
import 'package:paypal/shared/CustomField.dart';
import 'package:paypal/shared/rounded_button.dart';
import 'package:paypal/utils/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                       'Login',
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
                        hintText: "email",
                        iconData: Icons.alternate_email,
                       label: 'Email'
                    ),
                    CustomField(
                        hintText: "password",
                        iconData: Icons.lock_outline,
                        label: 'Password'
                    ),

                    SizedBox(
                      height: 32,
                    ),
                    RoundedButton(
                        text: "Login",
                        onPress: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Master( )),
                          );
                        }
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Wellcome Back !, time to start shopping. thousands are waiting for you !",
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
                          "Don't you have account",
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
                              MaterialPageRoute(builder: (context) => SignUpScreen()),
                            );
                          },
                          child: Text(
                            "Sign Up",
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
