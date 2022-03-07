import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

class MyClock extends StatelessWidget {
  final Color color;
  MyClock(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 30),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.5, 3.0),
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.5),
            shape: BoxShape.circle,
          ),
          child: AnalogClock(
            width: 150.0,
            isLive: true,
            hourHandColor: Colors.black,
            minuteHandColor: Colors.black,
            showSecondHand: true,
            numberColor: Colors.black,
            showAllNumbers: true,
            showDigitalClock: false,
            tickColor: Colors.black,
          )),
    );
  }
}
