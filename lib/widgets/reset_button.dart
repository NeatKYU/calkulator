import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final String label;

  const ResetButton({
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
          Navigator.pop(context);
        },
        child: Text(label),
      ),
    );
  }
}
