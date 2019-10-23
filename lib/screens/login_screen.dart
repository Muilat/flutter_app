import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/components/app_name.dart';
import 'package:flutterapp/components/primary_button.dart';
import 'package:flutterapp/constants/constant.dart';

class LoginScreen extends StatefulWidget {
  static final String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "logo",
                  child: Icon(
                    Icons.message,
                    size: 120,
                  ),
                ),
                AppName(
                  fontSize: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black54),
                    decoration: kTextFieldInputDecoration.copyWith(
                        hintText: "Enter Email", labelText: "Email",),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black54),
                    decoration: kTextFieldInputDecoration.copyWith(
                        hintText: "Enter Password", labelText: "Password",),
                    obscureText: true,
                  ),
                ),
                PrimaryButton(
                  text: "Login",
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
