import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;

  BottomButton(this.onTap, this.buttonTitle);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: /*() {
        Navigator.pushNamed(context, '/second');
      }*/
      onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}