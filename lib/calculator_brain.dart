import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25.0) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInerpretaionResult() {
    if (_bmi > 25.0) {
      return "Need to work on Yourself";
    } else if (_bmi > 18.5) {
      return "Great, stay healthy Do excersise regularly";
    } else {
      return "Need to eat a lot";
    }
  }
}
