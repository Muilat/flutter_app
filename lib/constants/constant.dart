import 'package:flutter/material.dart';

const kPrimaryColor = Colors.blue;
const kPrimaryColorLight = Colors.blueAccent;
const kBackgroundColor = Colors.lightBlueAccent;


const kTextFieldInputDecoration = InputDecoration(

  hintText: "Enter Email",
  filled: true,
  fillColor: Colors.white,

  focusedBorder:OutlineInputBorder(
    borderSide: BorderSide(
      color: kPrimaryColor,
      width: 2,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black26,
      width: 1,
    ),
  ),

  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
      width: 2,
    ),
  ),
);

