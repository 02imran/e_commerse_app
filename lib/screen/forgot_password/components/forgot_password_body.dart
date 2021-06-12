import 'package:e_commerce_app/components/custom_suffix_icon.dart';
import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/components/form_error.dart';
import 'package:e_commerce_app/components/no_account.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ForgotPasswordBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Forgot Password',
                style: hadingStyle,
              ),
              Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  List<String> errors = [];
  String email;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
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
                  errors.contains(kAddressNullError))
                setState(() {
                  errors.remove(kInvalidEmailError);
                });

              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kAddressNullError)) {
                setState(
                  () {
                    errors.add(kEmailNullError);
                  },
                );
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kAddressNullError))
                setState(() {
                  errors.add(kInvalidEmailError);
                });

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
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            press: () {
              if (_formkey.currentState.validate()) {
                // TODO: need to implement firebase
              }
            },
            text: 'Continue',
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText()
        ],
      ),
    );
  }
}
