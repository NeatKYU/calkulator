import 'package:flutter/material.dart';

class PeopleProvider extends ChangeNotifier {
  String _gender = '';
  double _taller = 1;
  double _age = 1;
  double _weight = 1;

  void setGender(String gender) {
    _gender = gender;
    notifyListeners();
  }

  void setTaller(double taller) {
    _taller = taller;
    notifyListeners();
  }

  void setAge(double age) {
    _age = age;
    notifyListeners();
  }

  void setWeight(double weight) {
    _weight = weight;
    notifyListeners();
  }

  String bmiStr(double bmiValue) {
    if (bmiValue < 18.5) {
      return '저체중';
    } else if (bmiValue >= 18.5 && bmiValue < 22.9) {
      return '정상';
    } else if (bmiValue >= 22.9 && bmiValue < 24.9) {
      return '과체중';
    } else if (bmiValue >= 24.9 && bmiValue < 29.9) {
      return '비만 1단계';
    } else if (bmiValue >= 29.9 && bmiValue < 34.9) {
      return '비만 2단계';
    } else {
      return '고도 비만';
    }
  }

  // 단순 체질량 계수(BMI)만 계산하는 함수
  double calculate() {
    // TODO 계산식 ㄲ
    double bmi = _weight / ((_taller / 100) * (_taller / 100));
    return bmi;
  }

  // TODO
  // 성별, 나이를 포함한 계산 함수
  int calculateWithGenderAndAge() {
    if (_gender == 'male') {
      if (_age > 15) {}
    } else {}
    return 0;
  }

  String? get gender => _gender;
  double? get taller => _taller;
  double? get age => _age;
  double? get weight => _weight;
}
