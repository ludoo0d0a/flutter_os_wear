import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/start_screen.dart';
import 'package:flutter_os_wear/screens/swipe/page1.dart';
import 'package:wear/wear.dart';

import '../../utils.dart';

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({Key? key}) : super(key: key);

  @override
  _SwipeScreenState createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  var labelText = '';
  var updText = '';

  @override
  void initState() {
    super.initState();
    labelText = '';
    updText = '';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onVerticalDragUpdate
      onVerticalDragUpdate: (details) {
        if (details.delta.direction > 0) {
          setState(() {
            updText = 'V ${details.delta.direction.toStringAsPrecision(2)}';
          });
        } else {
          setState(() {
            updText = 'V ${details.delta.direction.toStringAsPrecision(2)}';
          });
        }
      },
      onVerticalDragEnd: (DragEndDetails details) {
        if (details.primaryVelocity! > 0) {
          // User swiped Left
          setState(() {
            labelText = '⬆️';
          });
        } else if (details.primaryVelocity! < 0) {
          // User swiped Right
          setState(() {
            labelText = '⬇️';
          });
        }
      },

      onHorizontalDragUpdate: (details) {
        if (details.delta.direction > 0) {
          setState(() {
            updText = 'H ${details.delta.direction.toStringAsPrecision(2)}';
          });
        } else {
          setState(() {
            updText = 'H ${details.delta.direction.toStringAsPrecision(2)}';
          });
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.primaryVelocity! > 0) {
          // User swiped Left
          setState(() {
            labelText = '➡️';
          });
        } else if (details.primaryVelocity! < 0) {
          // User swiped Right
          setState(() {
            labelText = '⬅️';
          });
        }
      },
      child: Scaffold(
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
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text('swipe $labelText'),
                  Text('of $updText'),
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
                          return StartScreen();
                        }),
                      );
                    },
                    child: const Text(
                      'Start',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
