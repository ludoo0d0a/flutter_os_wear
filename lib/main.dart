import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/watch_screen.dart';
import 'package:flutter_os_wear/screens/splash_screen.dart';
import 'package:wear/wear.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//void main() => runApp(MyApp());
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

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
            //child: WatchScreen(),
            child: SplashScreen(),
          ),
        ),
        debugShowCheckedModeBanner: false,
      );
}

