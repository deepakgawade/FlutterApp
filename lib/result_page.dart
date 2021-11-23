import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusabel_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.interpretationResulText,
      @required this.resulText});
  final String bmiResult;
  final String resulText;
  final String interpretationResulText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Your Result",
                  style: kTitelTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resulText,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretationResulText,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          Bottombutton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE")
        ],
      ),
    );
  }
}
