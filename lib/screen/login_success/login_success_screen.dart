import 'package:e_commerce_app/screen/login_success/components/login_success_body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Login Success'),
      ),
      body: LoginSuccessBody(),
    );
  }
}
