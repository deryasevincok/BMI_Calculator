

import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain{
  CalculatorBrain(this.height,this.weight);

  final int weight;
  final int height;
  late double _bmi;
  late double idealWeight;

  String calculateBmi(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
}

  String getInterpretation(){
    if(_bmi >= 25)
      return 'Try to exercise more!';
    else if (_bmi > 18.5)
      return 'Good job :)';
    else
      return 'You can eat a bit more';
  }

  String getIdealWeight(){
    if(_bmi >= 25)
      idealWeight = 24.9 * pow(height/100, 2);
    else if (_bmi <= 18.5)
      idealWeight = 18.5 * pow(height/100, 2);
    else
      idealWeight = weight.toDouble();

    return idealWeight.toStringAsFixed(1);
  }

}