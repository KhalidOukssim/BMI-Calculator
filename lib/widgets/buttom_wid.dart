import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomWid extends StatelessWidget {
  ButtomWid({@required this.pressed, @required this.txt});
  final Function pressed;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        child: Center(
          child: Text(txt, style: kLargeTextBt),
        ),
        color: kButtomColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: buttomheight,
      ),
    );
  }
}
