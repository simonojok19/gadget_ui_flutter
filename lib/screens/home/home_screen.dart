import 'package:flutter/material.dart';

import 'components/background_image.dart';
import 'components/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppBar(),
              Column(
                children: [
                  BottomContainer()
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
