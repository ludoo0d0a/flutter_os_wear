import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/name_screen.dart';
import 'package:flutter_os_wear/screens/swipe/page1.dart';
import 'package:flutter_os_wear/utils.dart';
import 'package:wear/wear.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WatchShape(
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
            color: Colors.white,
            height: screenSize.height,
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const FlutterLogo(size: 90),
                const SizedBox(height: 10),
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
                    'START',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
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
                        return const Page1();
                      }),
                    );
                  },
                  child: const Text(
                    'SWIPE',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
