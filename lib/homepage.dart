import 'package:flutter/material.dart';

import 'myclock.dart';
import 'myslider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double r = 156, g = 39, b = 176;
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color.fromRGBO(156, 39, 176, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyClock(currentColor),
          SizedBox(
            height: 100,
          ),
          MySlider(
            curColor: Colors.red,
            initValue: r,
            updateSlider: (val) {
              r = val;
              setState(() {
                currentColor =
                    Color.fromRGBO(r.round(), g.round(), b.round(), 1);
              });
            },
          ),
          MySlider(
            curColor: Colors.green,
            initValue: g,
            updateSlider: (val) {
              g = val;
              setState(() {
                currentColor =
                    Color.fromRGBO(r.round(), g.round(), b.round(), 1);
              });
            },
          ),
          MySlider(
            curColor: Colors.blue,
            initValue: b,
            updateSlider: (val) {
              b = val;
              setState(() {
                currentColor =
                    Color.fromRGBO(val.round(), g.round(), b.round(), 1);
              });
            },
          ),
        ],
      ),
    ));
  }
}
