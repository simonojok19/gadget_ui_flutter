import 'package:flutter/material.dart';
import 'package:gadgets_store_app/screens/home/home_screen.dart';

import 'components/drawer_body.dart';

class NavigationDrawerScreen extends StatefulWidget {
  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> with SingleTickerProviderStateMixin{
  AnimationController _animationController ;
  Duration duration = Duration(milliseconds: 500);
  Animation<double> _scaleAnimation;
  bool drawerOpen = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          DrawerBody(closeDrawerCallback: () {
            if(drawerOpen) {
              setState(() {
                drawerOpen = false;
                _animationController.reverse();
              });
            }
          },),
          AnimatedPositioned(
              child: ScaleTransition(
                scale: _scaleAnimation,
                  child: GestureDetector(
                    onTap: () {
                      if(drawerOpen) {
                        setState(() {
                          drawerOpen = false;
                          _animationController.reverse();
                        });
                      }
                    },
                    child: AbsorbPointer(
                      absorbing: drawerOpen,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(drawerOpen ? 50.0 : 0.0),
                        child: HomeScreen(
                          drawerCallback: () {
                            setState(() {
                              drawerOpen = true;
                              _animationController.forward();
                            });
                          },
                        ),
                      ),
                    ),
                  )
              ),
            duration: duration,
            top: 0,
            bottom: 0,
            left: drawerOpen ? size.width * 0.40 : 0.0,
            right: drawerOpen ? size.width * - 0.60: 0.0,
          ),
        ],
      ),
    );
  }
}
