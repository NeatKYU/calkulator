import 'package:calkulator/screens/result_screen.dart';
import 'package:calkulator/widgets/gauge_box.dart';
import 'package:calkulator/widgets/gender_box.dart';
import 'package:calkulator/widgets/number_box.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CalculationScreen extends StatelessWidget {
  const CalculationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              GenderBox(
                icon: Icon(Icons.male_outlined, size: 100),
                label: 'male',
              ),
              GenderBox(
                icon: Icon(Icons.female_outlined, size: 100),
                label: 'female',
              ),
            ],
          ),
          GaugeBox(label: Text('신장(cm)'), limitNumber: 200),
          SizedBox(
            height: 10,
          ),
          NumberBox(label: 'age', limitNumber: 100),
          SizedBox(
            height: 10,
          ),
          NumberBox(label: 'weight', limitNumber: 200),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultScreen();
              }));
            },
            child: Text('계산!'),
          ),
        ],
      ),
    );
  }

  double calculate() {
    // TODO 계산식 ㄲ

    return 0;
  }
}
