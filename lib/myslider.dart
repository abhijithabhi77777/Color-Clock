import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  final Color curColor;
  final double initValue;
  final Function updateSlider;

  MySlider({this.curColor, this.initValue, this.updateSlider});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: curColor.withOpacity(0.7),
          inactiveTrackColor: curColor.withOpacity(0.1),
          trackShape: RectangularSliderTrackShape(),
          trackHeight: 4.0,
          thumbColor: curColor,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          overlayColor: curColor.withAlpha(32),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
        ),
        child:
            Slider(value: initValue, min: 0, max: 255, onChanged: updateSlider),
      ),
    );
  }
}
