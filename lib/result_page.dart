import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusuable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String idealWeight;

  ResultPage(
      this.bmiResult, this.resultText, this.interpretation, this.idealWeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                "BMI RESULT",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              () {},
              kActiveCardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kExpTextStyle,
                  ),
                  Text(
                  "Ideal weight: " + idealWeight,
                    textAlign: TextAlign.center,
                    style: kExpTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(() {
            Navigator.pop(context);
          }, "Re-Calculate")
        ],
      ),
    );
  }
}
