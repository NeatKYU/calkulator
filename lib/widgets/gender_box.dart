import 'package:calkulator/providers/people_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenderBox extends StatelessWidget {
  final Icon icon;
  final String label;

  const GenderBox({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        // TODO gender change
        print('선택!');
        // setGender();
        context.read<PeopleProvider>().setGender(label);
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: _size.width / 2 - 16,
          height: _size.width / 2 - 16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blueAccent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
