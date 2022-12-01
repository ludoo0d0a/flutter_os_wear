import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/swipe/page0.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      //onHorizontalDragUpdate: (details) {
      //  if (details.delta.direction > 0) {
      //    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2()));
      //  }
      //},
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.primaryVelocity! > 0) {
          // User swiped Left
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Page0()));
        } else if (details.primaryVelocity! < 0) {
          // User swiped Right
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Page2()));
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Text('<<<<< page 0'),
              const SizedBox(height: 10),
              const Text('Page 1'),
              const SizedBox(height: 10),
              const Text('page 2 >>>>'),
              MaterialButton(
                highlightColor: Colors.blue[900],
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.blue[400],
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Quit',
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
