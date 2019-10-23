import 'package:flutter/material.dart';
import 'package:flutterapp/constants/constant.dart';

class RegisterScreen extends StatefulWidget {
  static final String id = "register_screen";
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Center(
            child: Column(
          children: [
            Hero(
              tag: "logo",
              child: Icon(
                Icons.message,
                size: 120,
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.black54),
              decoration: kTextFieldInputDecoration.copyWith(
                hintText: "Enter Email"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2)),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
