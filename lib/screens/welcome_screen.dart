import 'package:flutter/material.dart';
import 'package:flutterapp/components/app_name.dart';
import 'package:flutterapp/components/primary_button.dart';
import 'package:flutterapp/constants/constant.dart';
import 'package:flutterapp/screens/login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutterapp/screens/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static final String id = "welcome_screen";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: kBackgroundColor,
      child: SafeArea(
        child: Center(
            child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "logo",
                child: Icon(
                  Icons.message,
                  size: 150,
                ),
              ),
              AppName(),
              PrimaryButton(
                text: "Login",
                color: kPrimaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              PrimaryButton(
                text: "Register",
                color: kPrimaryColorLight,
                onPressed: () {
                  Navigator.pushNamed(context, RegisterScreen.id);
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}

