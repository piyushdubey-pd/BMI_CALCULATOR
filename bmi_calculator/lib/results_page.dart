import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String resultValue;
  final String resultText;
  final String resultInterpretation;
  ResultsPage(
      {@required this.resultValue,
      @required this.resultText,
      @required this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            // alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                  ),
                  Text(
                    resultValue,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      resultInterpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButtonWidget(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
