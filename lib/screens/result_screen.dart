import 'package:calkulator/providers/people_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('result screen!'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(context.read<PeopleProvider>().gender!),
            Text(context.read<PeopleProvider>().taller!.toString()),
            Text(context.read<PeopleProvider>().age!.toString()),
            Text(context.read<PeopleProvider>().weight!.toString()),
            Text(context.read<PeopleProvider>().calculate().toStringAsFixed(1))
          ],
        ),
      ),
    );
  }
}
