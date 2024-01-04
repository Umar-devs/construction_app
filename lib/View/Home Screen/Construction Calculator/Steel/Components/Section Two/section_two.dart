import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/input_field_row.dart';

class SectionTwoSteel extends StatelessWidget {
  const SectionTwoSteel({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        InputFieldRowBricks(
          rowTitle: '1 Kg Price      ',
          titleFontSize: screenWidth * 0.03,
          leftPaddingToWholeRow: screenWidth * 0.0,
          spaceBetweenTitleAndField: screenWidth * 0.0,
          unit: 'Price', unitBoxSize: 0,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
         CalculateBtn(
          onTap: (){

          },
        ),
      ],
    );
  }
}
