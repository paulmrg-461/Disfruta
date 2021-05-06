import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  final String hintText;
  final TextEditingController textController;
  final IconData icon;

  const SearchInput(
      {Key key,
      @required this.hintText,
      @required this.textController,
      @required this.icon})
      : super(key: key);

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(10),
          /* boxShadow: <BoxShadow>[
              BoxShadow(
                      Colors.black.withOpacity(0.35),
                  offset: Offset(0, 5),
                  blurRadius: 5)
            ] */
        ),
        child: TextField(
          controller: this.widget.textController,
          autocorrect: false,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            prefixIcon: Icon(this.widget.icon),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
            labelText: this.widget.hintText,
          ),
        ));
  }
}
