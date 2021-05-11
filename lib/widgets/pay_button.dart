import 'package:flutter/material.dart';

class PayButton extends StatelessWidget {
  final Function onPressed;
  final String textButton;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  const PayButton(
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
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.35),
                offset: Offset(5, 5),
                blurRadius: 5)
          ]),
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total a pagar',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '2.500',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
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
                width: MediaQuery.of(context).size.width * 0.55,
                height: 50,
                child: Center(
                  child: Text(
                    this.textButton,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: this.fontSize,
                        color: this.textColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
