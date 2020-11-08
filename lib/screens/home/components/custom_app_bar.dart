import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
          height: size.height * 0.1,
          padding: EdgeInsets.all(appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.short_text_rounded,
                color: white,
                size: 25,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: 'Erupt',
                      style: TextStyle(
                        color: yellow
                      )
                    ),
                    TextSpan(
                        text: '.',
                        style: TextStyle(
                            color: red
                        )
                    )
                  ]
                ),
              ),
              Icon(
                Icons.search_off_rounded,
                color: white,
                size: 25,
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.red
          ),
        )
    );
  }
}
