import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  int height;
  int weight;
  double _bmi;

  String calculateBMI() {
    _bmi= weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Ghlid';
    } else if (_bmi >= 18.5) {
      return 'Moyen';
    } else {
      return 'Reqiiq';
    }
  }
 
   String getInteptation() {
    if (_bmi >= 25) {
      return 'Trini w nqess mn lmakla a had lhloof';
    } else if (_bmi >= 18.5) {
      return 'Tbarklaah aalik n3am assidi';
    } else {
      return 'kol kol malk 3la haltek..mhntina m3aaak';
    }
  }
  
}
