import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_os_wear/utils/constants.dart';
import 'package:flutter_os_wear/screens/watch_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //context.read(sportsDataProvider).checkConnectivity();
    //context.read(sportsDataProvider).getSportsData();
    startTime();
  }

  Future<void> startTime() async {
    const _duration = Duration(seconds: 4);
    Timer(_duration, navigationPage);
  }

  navigationPage() async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => WatchScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, watch, Widget? child) {
        //final sportDataWatcher = watch(sportsDataProvider);

        //sportDataWatcher.getSportsData();
        return Scaffold(
          body: Center(
            child: Lottie.asset(splashLogo),
          ),
        );
      },
    );
  }
}