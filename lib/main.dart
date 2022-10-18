import 'package:calkulator/providers/people_provider.dart';
import 'package:calkulator/screens/calculation_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PeopleProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Color(0xff58C9B9),
            scaffoldBackgroundColor: Color(0xffE0E3DA),
            fontFamily: 'Mabinogi_Classic',
            // primarySwatch: MaterialColor(0xffA593E0, ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(fontSize: 60),
              bodyMedium: TextStyle(fontSize: 35),
              bodySmall: TextStyle(fontSize: 20),
            )),
        home: const CalculationScreen(),
      ),
    );
  }
}
