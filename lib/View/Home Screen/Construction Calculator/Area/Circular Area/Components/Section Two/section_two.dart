import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';

class SectionTwoCircularArea extends StatelessWidget {
  const SectionTwoCircularArea({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.03,
        ),
        InputFieldRowArea(
          rowTitle: 'Dia Meter',
          titleFontSize: screenWidth * 0.035,
          unit: feetScreen ? 'Ft' : 'M',
        ),
        InputFieldRowArea(
          rowTitle: 'Height',
          titleFontSize: screenWidth * 0.035,
          unit: 'Value',
        ),
        InputFieldRowArea(
          rowTitle: 'Quantity',
          titleFontSize: screenWidth * 0.035,
          unit: 'nos',
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
         const CalculateBtn(),
        SizedBox(
          height: screenHeight * 0.03,
        ),

      ],
    );
  }
}
