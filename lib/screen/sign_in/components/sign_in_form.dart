import 'package:e_commerce_app/components/custom_suffix_icon.dart';
import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/components/form_error.dart';
import 'package:e_commerce_app/screen/forgot_password/forgot_password.dart';
import 'package:e_commerce_app/screen/login_success/login_success_screen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remembere = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                activeColor: kPrimaryColor,
                value: remembere,
                onChanged: (value) {
                  setState(() {
                    remembere = value;
                  });
                },
              ),
              Text('Remember me'),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(
                      context, ForgotPasswordScreen.routeName);
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(
            () {
              errors.remove(kPassNullError);
            },
          );
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
          return '';
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(
            () {
              errors.add(kPassNullError);
            },
          );
          return '';
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }

        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgPic: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(
            () {
              errors.remove(kEmailNullError);
            },
          );
          
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
          return '';
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kAddressNullError)) {
          setState(
            () {
              errors.add(kEmailNullError);
            },
          );
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter Your Email',
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgPic: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}
