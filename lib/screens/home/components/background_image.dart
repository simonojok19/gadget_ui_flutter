import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      child: Image(
        image: AssetImage('assets/images/headmain.jpg'),
      ),
    );
  }
}
