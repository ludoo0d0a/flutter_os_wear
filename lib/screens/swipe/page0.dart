import 'package:flutter/material.dart';
import 'page2.dart';

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      onHorizontalDragUpdate: (details) {
        if (details.delta.direction <= 0) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Text('Page 0'),
              const Text('swipe left : back'),
            ],
          ),
        ),
      ),
    );
  }
}
