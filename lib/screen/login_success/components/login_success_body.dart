import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/screen/home/home_screen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class LoginSuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.4,
          width: SizeConfig.screenHeight,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          'Login Success',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            text: 'Home',
          ),
        ),
        Spacer()
      ],
    );
  }
}
