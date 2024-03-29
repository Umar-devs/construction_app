import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'View/Home Screen/Construction Calculator/construction_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConstructionCalculator(),
    );
  }
}
