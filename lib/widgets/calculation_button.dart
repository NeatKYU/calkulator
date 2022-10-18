import 'package:flutter/material.dart';
import '../screens/result_screen.dart';

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
      height: 50,
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
