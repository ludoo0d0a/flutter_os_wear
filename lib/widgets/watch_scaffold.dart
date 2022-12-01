import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/relax/name_screen.dart';
import 'package:flutter_os_wear/screens/swipe/page1.dart';
import 'package:flutter_os_wear/screens/swipe/swipe_screen.dart';
import 'package:flutter_os_wear/utils.dart';
import 'package:wear/wear.dart';

class WatchScaffold extends StatelessWidget {
  const WatchScaffold({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WatchShape(
        builder: (BuildContext context, WearShape shape, Widget? innerChild) {
          var screenSize = MediaQuery.of(context).size;
          if (shape == WearShape.round) {
            // boxInsetLength requires radius, so divide by 2
            screenSize = Size(boxInsetLength(screenSize.width / 2),
                boxInsetLength(screenSize.height / 2));
          }

          return Center(
            child: Container(
              color: Colors.green,
              height: screenSize.height,
              width: screenSize.width,
              child: child,
            ),
          );
        },
      ),
    );
  }
}
