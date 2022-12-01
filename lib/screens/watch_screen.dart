import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/ambient_screen.dart';
import 'package:flutter_os_wear/screens/start_screen.dart';
import 'package:wear/wear.dart';

class WatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (BuildContext context, WearShape shape, Widget? child) {
        return AmbientMode(
          builder: (context, WearMode mode, child) {
            return mode == WearMode.active ? StartScreen() : AmbientWatchFace();
          },
        );
      },
    );
  }
}
