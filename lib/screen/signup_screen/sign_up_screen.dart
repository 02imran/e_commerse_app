import 'package:e_commerce_app/screen/signup_screen/components/sign_up_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Screen'),
      ),
      body: SignUpBody(),
    );
  }
}
