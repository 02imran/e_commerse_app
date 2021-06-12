import 'package:e_commerce_app/screen/otp_screen/components/otp_body.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = 'otp_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Varification'),
      ),
      body: OtpScreenBody(),
    );
  }
}
