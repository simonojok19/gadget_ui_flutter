import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
                child: Icon(Icons.arrow_back,
                  color: black,
                  size: 25,
                )
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
            Icon(Icons.search_rounded, color: black, size: 25,)
          ],
        ),
      ),
    );
  }
}
