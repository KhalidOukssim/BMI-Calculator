import 'package:bmi_calculator/widgets/buttom_wid.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import '../constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult,@required this.interpetation,@required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpetation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'NATIJA',
                style: kTextTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              childBMI: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIText,
                  ),
                  Text(
                    interpetation,
                    style: kBodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtomWid(
              pressed: () {
                Navigator.pop(context);
              },
              txt: 'RJE3 FHALK')
        ],
      ),
    );
  }
}
