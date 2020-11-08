import 'package:flutter/material.dart';

import 'components/drawer_body.dart';

class NavigationDrawerScreen extends StatefulWidget {
  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerBody(),
        ],
      ),
    );
  }
}
