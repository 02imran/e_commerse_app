import 'package:e_commerce_app/screen/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_app/screen/forgot_password/forgot_password.dart';
import 'package:e_commerce_app/screen/login_success/login_success_screen.dart';
import 'package:e_commerce_app/screen/otp_screen/otp_screen.dart';
import 'package:e_commerce_app/screen/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/screen/signup_screen/sign_up_screen.dart';
import 'package:e_commerce_app/screen/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
};
