import 'package:calkulator/providers/people_provider.dart';
import 'package:calkulator/widgets/result_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calkulator/widgets/reset_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String bmiValue =
        context.read<PeopleProvider>().calculate().toStringAsFixed(1);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '결과를 확인하세요',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ResultBox(bmiValue: bmiValue),
      bottomNavigationBar: ResetButton(label: '다시 계산하기'),
    );
  }
}
