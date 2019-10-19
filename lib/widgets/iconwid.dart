import 'package:flutter/material.dart';
import '../constants.dart';

class IconWid extends StatelessWidget {
  IconWid({@required this.ic, @required this.txt});
  final ic;
  final txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(ic, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(txt, style: kTextlabel)
      ],
    );
  }
}
