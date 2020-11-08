import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final double rating;

  const StarRating({Key key, this.rating}) : super(key: key);
  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if (index < (widget.rating).round()) {
          return
        }
      }),
    );
  }
}
