import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gadgets_store_app/constants/constants.dart';

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
          return star(true);
        } else {
          return star(false);
        }
      }),
    );
  }

  Widget star(bool fill) {
    return Container(
      child: Icon(
        Icons.star,
        size: 18,
        color: fill ? yellow : white,
      ),
    );
  }
}
