import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/relax/name_screen.dart';
import 'package:flutter_os_wear/screens/slider/slider_screen.dart';
import 'package:flutter_os_wear/screens/swipe/swipe_screen.dart';
import 'package:flutter_os_wear/utils.dart';
import 'package:wear/wear.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WatchShape(
        builder: (BuildContext context, WearShape shape, Widget? child) {
          var screenSize = MediaQuery.of(context).size;
          if (shape == WearShape.round) {
            // boxInsetLength requires radius, so divide by 2
            screenSize = Size(boxInsetLength(screenSize.width / 2),
                boxInsetLength(screenSize.height / 2));
          }
          var screenHeight = screenSize.height;
          var screenWidth = screenSize.width;

          return Center(
            child: Container(
              color: Colors.green,
              height: screenSize.height,
              width: screenSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  MaterialButton(
                    highlightColor: Colors.blue[900],
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.blue[400],
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return NameScreen(screenHeight, screenWidth);
                        }),
                      );
                    },
                    child: const Text(
                      'relax',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  MaterialButton(
                    highlightColor: Colors.blue[500],
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.blue[400],
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const SwipeScreen();
                        }),
                      );
                    },
                    child: const Text(
                      'swipe',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  MaterialButton(
                    highlightColor: Colors.blue[200],
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.blue[400],
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const SliderScreen();
                        }),
                      );
                    },
                    child: const Text(
                      'slide',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
