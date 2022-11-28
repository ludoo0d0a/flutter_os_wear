import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/ambient_screen.dart';
import 'package:flutter_os_wear/screens/start_screen.dart';
import 'package:wear/wear.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Wear App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: WatchScreen(),
          ),
        ),
        debugShowCheckedModeBanner: false,
      );
}

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
