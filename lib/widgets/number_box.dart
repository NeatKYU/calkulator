import 'package:calkulator/providers/people_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberBox extends StatefulWidget {
  final String label;
  final int limitNumber;
  const NumberBox({
    super.key,
    required this.label,
    required this.limitNumber,
  });

  @override
  State<NumberBox> createState() => _NumberBoxState();
}

class _NumberBoxState extends State<NumberBox> {
  int _num = 1;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      height: _size.width / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: _size.width / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text(widget.label)),
                Text('$_num'),
              ],
            ),
          ),
          SizedBox(
            width: _size.width / 2,
            child: CupertinoPicker(
              itemExtent: 50, // 아이템 height
              onSelectedItemChanged: (value) {
                setState(() {
                  _num = value + 1;
                });
                if (widget.label == 'age') {
                  context.read<PeopleProvider>().setAge(value + 1);
                } else {
                  context.read<PeopleProvider>().setWeight(value + 1);
                }
              },
              children: List.generate(
                widget.limitNumber,
                (index) => Center(
                  child: Text('${index + 1}'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
