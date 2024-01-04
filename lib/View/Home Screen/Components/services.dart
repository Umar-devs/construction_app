
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/constants.dart';
import '../Construction Calculator/construction_calculator.dart';

class Services extends StatelessWidget {
  Services({super.key});
  final List<String> imagesPaths = [
    'assets/images/construction calculator.png',
    'assets/images/architecture.png',
    'assets/images/civil engineering.png',
    'assets/images/feedback.png',
    'assets/images/about us.png',
    'assets/images/contact us .png',
  ];
  final List<Widget> widgets = [
    ConstructionCalculator(),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.5,
      width: screenWidth * 0.95,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(
            6,
            (index) => GestureDetector(
                  onTap: () {
                    Get.to(widgets[index],
                        duration: const Duration(milliseconds: 1200),
                        transition: Transition.fadeIn);
                  },
                  child: Container(
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              imagesPaths[index],
                            ),
                            fit: BoxFit.cover)),
                  ),
                )),
      ),
    );
  }
}
