import 'package:calkulator/widgets/gender_box.dart';
import 'package:calkulator/widgets/number_box.dart';
import 'package:flutter/material.dart';

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
                label: Text('male'),
              ),
              GenderBox(
                icon: Icon(Icons.female_outlined, size: 100),
                label: Text('female'),
              ),
            ],
          ),
          NumberBox(
            label: Text('age'),
            limitNumber: 100,
          ),
          SizedBox(
            height: 10,
          ),
          NumberBox(
            label: Text('weight'),
            limitNumber: 200,
          ),
        ],
      ),
    );
  }
}
