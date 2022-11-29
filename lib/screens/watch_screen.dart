import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/relax/ambient_screen.dart';
import 'package:flutter_os_wear/screens/relax/start_screen.dart';
import 'package:wear/wear.dart';

class WatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => WatchShape(
        builder: (BuildContext context, WearShape shape, Widget? child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Shape: ${shape == WearShape.round ? 'round' : 'square'}',
              ),
              child!,
            ],
          );
        },
        child: AmbientMode(
          builder: (BuildContext context, WearMode mode, Widget? child) {
            //return StartScreen();
            return mode == WearMode.active ? StartScreen() : AmbientWatchFace();
            // return Text(
            //   'Mode: ${mode == WearMode.active ? 'Active' : 'Ambient'}',
            // );
          },
        ),
      );
}
