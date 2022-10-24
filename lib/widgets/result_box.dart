import 'package:calkulator/providers/people_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultBox extends StatelessWidget {
  final String bmiValue;

  const ResultBox({
    super.key,
    required this.bmiValue,
  });

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: _size.height * 0.5,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(bmiValue, style: TextStyle(fontSize: 120)),
            SizedBox(height: 10),
            Text(
              context.read<PeopleProvider>().bmiStr(double.parse(bmiValue)),
              style: TextStyle(fontSize: 70),
            ),
          ],
        ),
      ),
    );
  }
}
