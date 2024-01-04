import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';

class SectionTwoAreaConverter extends StatelessWidget {
  const SectionTwoAreaConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.03,
        ),
        InputFieldRowUnitConverter(
          rowTitle: 'Results',
          titleFontSize: screenWidth * 0.03,
          unit: 'sq.M',
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.05,
        ),
        const CalculateBtn(
          changeTitle: true,
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
      ],
    );
  }
}
