import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String hintText;
  final TextEditingController textController;
  final IconData icon;
  final IconData suffixIcon;
  final TextInputType textInputType;
  bool obscureText;
  final TextCapitalization textCapitalization;
  final Color inputColor;
  final double paddingBottom;
  final double borderRadius;
  final bool borderEnabled;

  CustomInput({
    Key key,
    @required this.hintText,
    @required this.textController,
    @required this.icon,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.inputColor = Colors.white,
    this.paddingBottom = 18,
    this.borderRadius = 30,
    this.borderEnabled = false,
  }) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: this.widget.paddingBottom),
        padding: EdgeInsets.only(left: 6, right: 12),
        decoration: BoxDecoration(
            color: this.widget.inputColor,
            border: this.widget.borderEnabled
                ? Border.all(color: Colors.black12)
                : null,
            borderRadius: BorderRadius.circular(this.widget.borderRadius),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: this.widget.borderEnabled
                      ? Colors.black.withOpacity(0.35)
                      : Colors.black.withOpacity(0.05),
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
