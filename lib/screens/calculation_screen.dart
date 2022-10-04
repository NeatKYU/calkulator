import 'package:calkulator/widgets/number_button_widget.dart';
import 'package:flutter/material.dart';

class CalculationScreen extends StatelessWidget {
  const CalculationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: _size.height * 0.22,
              color: Colors.amberAccent,
            ),
            Container(
              width: double.infinity,
              height: _size.height * 0.58,
              color: Colors.blueGrey,
              child: GridView.count(
                // 스크롤 막기
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                crossAxisCount: 4,
                children: _pad(),
                // children: [
                //   NumberButtonWidget(
                //     calNumber: '1',
                //     fillColor: Colors.black,
                //   ),
                // ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _pad() {
    List<String> padStrList = [
      'C',
      '+/-',
      '%',
      '÷',
      '7',
      '8',
      '9',
      'x',
      '4',
      '5',
      '6',
      '-',
      '1',
      '2',
      '3',
      '+',
      '0',
      '.',
      '='
    ];
    return List.generate(
      padStrList.length,
      (index) {
        return NumberButtonWidget(
          calNumber: padStrList[index],
          fillColor: Colors.black,
        );
      },
    );
  }
}
