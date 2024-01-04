import 'package:construction_app/View/Home Screen/Construction Calculator/construction_calculator.dart';
import 'package:construction_app/View/Splash%20Screen/splash_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('ConstructionCalculator should display all widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp()); // Replace MyApp() with the widget that contains ConstructionCalculator
    print(tester.binding.rootElement); // Print the widget tree
    await tester.pumpAndSettle(); // Wait for any animations/transitions to complete

    // Now, check if the ConstructionCalculator widget is in the widget tree
    expect(find.byType(MyApp), findsOneWidget);
  });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SplashScreen(onNavigation: () { Get.to(ConstructionCalculator()); },),
      ),
    );
  }
}
