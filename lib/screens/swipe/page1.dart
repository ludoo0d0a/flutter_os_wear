import 'package:flutter/material.dart';
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
         } else if (details.primaryVelocity! < 0) {
           // User swiped Right
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2()));
         }
       },
      child: Scaffold(
        body: Center(
          child: Text('Page 1'),
        ),
      ),
    );
  }
}