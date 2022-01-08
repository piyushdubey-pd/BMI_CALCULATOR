import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmiResult;
  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmiResult = weight / pow(height / 100, 2);
    return _bmiResult.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmiResult >= 25) {
      return "Overweight";
    } else if (_bmiResult >= 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation()
  {
    if (_bmiResult >= 25) {
      return "You need to control your diet.";
    } else if (_bmiResult >= 18.5) {
      return "You are doing Great.";
    } else {
      return "You need to eat more.";
    }
  }

}
