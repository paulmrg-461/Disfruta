import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String textButton;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  const CustomButton(
      {Key key,
      @required this.onPressed,
      @required this.textButton,
      this.buttonColor,
      this.textColor,
      this.fontSize = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        onPrimary: textColor,
        onSurface: Colors.grey,
        shape: StadiumBorder(),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 46, vertical: 14),
        child: Text(
          this.textButton,
          style: TextStyle(
              fontSize: this.fontSize,
              color: this.textColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
