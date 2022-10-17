import 'package:calkulator/screens/result_screen.dart';
import 'package:calkulator/widgets/gauge_box.dart';
import 'package:calkulator/widgets/gender_box.dart';
import 'package:calkulator/widgets/number_box.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CalculationScreen extends StatelessWidget {
  const CalculationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              GenderBox(
                  icon: Icon(Icons.male_outlined, size: 100),
                  label: Text('male'),
                  setGender: () {
                    setGender('male');
                  }),
              GenderBox(
                icon: Icon(Icons.female_outlined, size: 100),
                label: Text('female'),
                setGender: () {
                  setGender('female');
                },
              ),
            ],
          ),
          GaugeBox(label: Text('신장(cm)'), limitNumber: 100),
          SizedBox(
            height: 10,
          ),
          NumberBox(label: Text('age'), limitNumber: 100),
          SizedBox(
            height: 10,
          ),
          NumberBox(label: Text('weight'), limitNumber: 200),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultScreen();
              }));
            },
            child: Text('계산!'),
          ),
        ],
      ),
    );
  }

  void setGender(String gender) async {
    SharedPreferences.setMockInitialValues({});
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('gender', gender);
  }

  double calculate() {
    // TODO 계산식 ㄲ
    
    return 0;
  }
}
