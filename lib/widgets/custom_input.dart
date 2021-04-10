import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String hintText;
  final TextEditingController textController;
  final IconData icon;
  final IconData suffixIcon;
  final TextInputType textInputType;
  bool obscureText;
  final TextCapitalization textCapitalization;

  CustomInput(
      {Key key,
      @required this.hintText,
      @required this.textController,
      @required this.icon,
      this.suffixIcon,
      this.textInputType = TextInputType.text,
      this.obscureText = false,
      this.textCapitalization = TextCapitalization.none})
      : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 18),
        padding: EdgeInsets.only(left: 6, right: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: Offset(0, 5),
                  blurRadius: 5)
            ]),
        child: TextField(
          controller: this.widget.textController,
          autocorrect: false,
          keyboardType: this.widget.textInputType,
          obscureText: this.widget.obscureText,
          textCapitalization: this.widget.textCapitalization,
          decoration: InputDecoration(
            prefixIcon: Icon(this.widget.icon),
            suffixIcon: IconButton(
                onPressed: () => this.setState(() {
                      this.widget.obscureText = !this.widget.obscureText;
                    }),
                icon: Icon(this.widget.suffixIcon)),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
            labelText: this.widget.hintText,
          ),
        ));
  }
}
