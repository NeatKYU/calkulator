import 'package:calkulator/providers/people_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenderBox extends StatefulWidget {
  final Icon icon;
  final String label;

  const GenderBox({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  State<GenderBox> createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    PeopleProvider peopleProvider = context.read<PeopleProvider>();
    return GestureDetector(
      onTap: () {
        // TODO gender change
        // setGender();
        peopleProvider.setGender(widget.label);
        print(peopleProvider.gender);
        // setState(() {
        //   _gender = peopleProvider.gender!;
        // });
      },
      child: Container(
        width: _size.width / 2 - 16,
        height: _size.width / 2 - 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: widget.label == context.watch<PeopleProvider>().gender
              ? Color(0xff9DC8C8)
              : Theme.of(context).primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon,
            Text(widget.label),
          ],
        ),
      ),
    );
  }
}
