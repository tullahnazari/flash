import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.textButtonColor, this.onPressed, this.buttonText});

  final Color textButtonColor;
  final Function onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: textButtonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
