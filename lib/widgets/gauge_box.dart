import 'package:calkulator/providers/people_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GaugeBox extends StatefulWidget {
  final Text label;
  final double limitNumber;
  const GaugeBox({
    super.key,
    required this.label,
    required this.limitNumber,
  });

  @override
  State<GaugeBox> createState() => _GaugeBoxState();
}

class _GaugeBoxState extends State<GaugeBox> {
  double _num = 1;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width - 16,
      height: _size.width / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blueAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: _size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: widget.label),
                SizedBox(width: 20),
                Text('${_num.toInt()}'),
              ],
            ),
          ),
          SizedBox(
            width: _size.width,
            child: Slider(
              // min: 0,
              max: widget.limitNumber,
              thumbColor: Colors.cyanAccent,
              activeColor: Colors.cyan,
              divisions: widget.limitNumber.toInt(),
              value: _num,
              onChanged: (value) {
                setState(() {
                  _num = value;
                });
                context.read<PeopleProvider>().setTaller(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
