import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../widgets/watch_scaffold.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return WatchScaffold(
      child: SleekCircularSlider(
        min: 0,
        max: 1000,
        initialValue: 426,
        onChange: (double value) {
          // callback providing a value while its being changed (with a pan gesture)
        },
        onChangeStart: (double startValue) {
          // callback providing a starting value (when a pan gesture starts)
        },
        onChangeEnd: (double endValue) {
          // ucallback providing an ending value (when a pan gesture ends)
        },
        // innerWidget: (double value) {
        //   // use your custom widget inside the slider (gets a slider value from the callback)
        // },
      ),
    );
  }
}
