import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/relax/ambient_screen.dart';
import 'package:flutter_os_wear/screens/relax/relax_menu.dart';
import 'package:wear/wear.dart';

class NameScreen extends StatelessWidget {
  final screenHeight;
  final screenWidth;
  NameScreen(this.screenHeight, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      builder: (BuildContext context, WearMode mode, Widget? child) => mode == WearMode.active
          ? NameScreenUI(screenHeight, screenWidth)
          : AmbientWatchFace(),
    );
  }
}

class NameScreenUI extends StatelessWidget {
  final screenHeight;
  final screenWidth;
  NameScreenUI(this.screenHeight, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/outline_arrow.png',
                      scale: 1.8,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Back',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 15),
              const Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'FlutterOS',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[700],
                ),
              ),
              const SizedBox(height: 5),
              MaterialButton(
                highlightColor: Colors.blue[900],
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.blue[400],
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return RelaxView(screenHeight, screenWidth);
                  }));
                },
                child: const Text(
                  'NEXT',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
