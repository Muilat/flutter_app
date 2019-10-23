import 'package:flutter/material.dart';
import 'package:flutterapp/constants/constant.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  PrimaryButton({this.text, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: Padding(

        padding: const EdgeInsets.all(16.0),
        child: RaisedButton(

//            shape: ShapeBorder.lerp(2, b, t),
          padding: const EdgeInsets.all(12.0),
          textColor: Colors.white,
          color: this.color,
          child: Flex(
            children: [
              Expanded(
                child: Center(child: Text(this.text, style: TextStyle(fontSize: 20),),),
              ),
            ], direction: Axis.horizontal,
          ),
          onPressed: this.onPressed,
        ),
      ),
    );
  }
}
