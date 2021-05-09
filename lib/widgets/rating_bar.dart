import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatefulWidget {
  final double itemSize;
  final double itemPadding;
  final bool allowHalfRating;

  const CustomRatingBar(
      {Key key,
      this.itemSize = 17,
      this.itemPadding = 1,
      this.allowHalfRating = true})
      : super(key: key);

  @override
  _CustomRatingBarState createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: widget.itemSize,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: widget.allowHalfRating,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: widget.itemPadding),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
