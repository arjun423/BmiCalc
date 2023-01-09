import 'package:flutter/material.dart';

class Bmibrain {
  Bmibrain(this.w, this.h) {
    _bmi = w / h;
    _bmi /= h;
    _bmi *= 10000;
  }
  final w, h;
  double _bmi;
  double calc() {
    return _bmi;
  }

  String msg() {
    if (_bmi < 18) {
      return "Less than normal,increase your diet";
    } else if (_bmi < 24) {
      return "Perfectly balanced as all things should be";
    } else {
      return "It is more than normal, a matter of concern";
    }
  }

  String gret() {
    if (_bmi < 18) {
      return "UnderWeight";
    } else if (_bmi < 24) {
      return "Normal";
    } else {
      return "Overweight";
    }
  }

  Color getc() {
    if (_bmi < 18) {
      return Colors.yellow;
    } else if (_bmi < 24) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
