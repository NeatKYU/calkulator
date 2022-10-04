import 'package:flutter/material.dart';

class NumberButtonWidget extends StatelessWidget {
  final String calNumber;
  final Color fillColor;
  const NumberButtonWidget({
    super.key,
    required this.calNumber,
    required this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(50),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            calNumber,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
