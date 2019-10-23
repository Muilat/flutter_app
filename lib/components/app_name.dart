import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  final fontSize;

  AppName({this.fontSize});

  @override
  Widget build(BuildContext context) {
    return TypewriterAnimatedTextKit(
      text: [
        "Chat with Me",
      ],
      textStyle: TextStyle(
        fontSize: fontSize == null ? 30.0 : this.fontSize,
        fontFamily: "Agne",
      ),
      textAlign: TextAlign.start,
      alignment: AlignmentDirectional.topStart ,// or Alignment.topLeft
    );
  }
}
