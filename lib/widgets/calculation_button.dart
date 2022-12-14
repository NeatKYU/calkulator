import 'package:calkulator/screens/result_screen.dart';
import 'package:flutter/material.dart';

class CalculationButton extends StatelessWidget {
  final String label;

  const CalculationButton({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ResultScreen();
          }));
        },
        child: Text(label),
      ),
    );
  }
}
