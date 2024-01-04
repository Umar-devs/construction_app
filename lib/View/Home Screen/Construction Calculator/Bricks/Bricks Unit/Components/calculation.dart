import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';

class CalculationBox extends StatelessWidget {
  const CalculationBox(
      {super.key, required this.tap, required this.calculationType, required this.imgPath});
  final String calculationType;
  final VoidCallback tap;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: tap,
          child: Container(
            padding: const EdgeInsets.only(top: 1.5, left: 1.5, right: 1.5),
            height: screenHeight * 0.2,
            width: screenWidth * 0.33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: const Color(0xff008fff),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.14,
                  width: screenWidth * 0.33,
                  // color: Colors.brown,
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: screenHeight * 0.01,
                  width: screenWidth * 0.32,
                  color: Colors.black,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ReusableText(
                    title: calculationType,
                    fontSize: screenWidth * 0.038,
                    weight: FontWeight.w600,
                    clr: Colors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
