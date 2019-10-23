import 'package:flutter/material.dart';
import 'package:flutterapp/screens/login_screen.dart';
import 'package:flutterapp/screens/register_screen.dart';
import 'package:flutterapp/screens/welcome_screen.dart';

import 'constants/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
//      home: WelcomeScreen(),
      routes:{
        WelcomeScreen.id :  (context) =>  WelcomeScreen(),
        LoginScreen.id :  (context) =>  LoginScreen(),
        RegisterScreen.id :  (context) =>  RegisterScreen(),
      },
    );
  }
}


