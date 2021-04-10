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
    return Container(
      child: ElevatedButton(
        onPressed: this.onPressed,
        style: ElevatedButton.styleFrom(
          /* primary: buttonColor,
          onPrimary: textColor,
          onSurface: Colors.grey, */
          padding: EdgeInsets.all(0),
          shape: StadiumBorder(),
        ),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffC012FF),
                Color(0xff6D05E8),
                Color(0xff6D05FA),
              ], stops: [
                0.0,
                0.5,
                1.0
              ]),
              borderRadius: BorderRadius.circular(28.0)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 54, vertical: 14),
            child: Text(
              this.textButton,
              style: TextStyle(
                  fontSize: this.fontSize,
                  color: this.textColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
