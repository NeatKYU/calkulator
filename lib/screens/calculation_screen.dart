import 'package:calkulator/widgets/calculation_button.dart';
import 'package:calkulator/widgets/gauge_box.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            SizedBox(
              height: 10,
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
            SizedBox(
              height: 10,
            ),
            CalculationButton(label: 'calculate!!'),
          ],
        ),
      ),
    );
  }

  double calculate() {
    // TODO 계산식 ㄲ

    return 0;
  }
}
