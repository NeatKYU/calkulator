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
        title: Text(
          'BMI 계산기',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
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
                  label: '남자',
                ),
                GenderBox(
                  icon: Icon(Icons.female_outlined, size: 100),
                  label: '여자',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GaugeBox(label: Text('신장'), limitNumber: 200),
            SizedBox(
              height: 10,
            ),
            NumberBox(label: '나이', limitNumber: 100),
            SizedBox(
              height: 10,
            ),
            NumberBox(label: '몸무게', limitNumber: 200),
          ],
        ),
      ),
      bottomNavigationBar: CalculationButton(label: '나의 비만도는?'),
    );
  }
}
