import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';

class SectionTwoTrapezoidArea extends StatelessWidget {
  const SectionTwoTrapezoidArea({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.03,
        ),
        InputFieldRowTrapezoidArea(
          rowTitle: 'Base 1',
          titleFontSize: screenWidth * 0.035,
          unit: feetScreen ? 'Ft' : 'M',
        ),
        InputFieldRowTrapezoidArea(
          rowTitle: 'Base 2',
          titleFontSize: screenWidth * 0.035,
          unit: feetScreen ? 'Ft' : 'M',
        ),InputFieldRowTrapezoidArea(
          rowTitle: 'Height',
          titleFontSize: screenWidth * 0.035,
          unit: feetScreen ? 'Ft' : 'M',
        ),
        InputFieldRowTrapezoidArea(
          rowTitle: 'Quantity',
          titleFontSize: screenWidth * 0.035,
          unit: 'nos',
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.025,
        ),
        const CalculateBtn(),
        SizedBox(
          height: screenHeight * 0.025,
        ),

      ],
    );
  }
}
