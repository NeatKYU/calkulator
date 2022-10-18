import 'package:flutter/material.dart';

class PeopleProvider extends ChangeNotifier {
  String _gender = '';
  double _taller = 0;
  double _age = 0;
  double _weight = 0;

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

  String? get gender => _gender;
  double? get taller => _taller;
  double? get age => _age;
  double? get weight => _weight;
}
