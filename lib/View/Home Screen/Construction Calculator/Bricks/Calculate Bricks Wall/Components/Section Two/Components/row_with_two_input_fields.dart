import 'package:flutter/material.dart';

import '../../../../../../../../../Constants/constants.dart';
import '../../input_field_row.dart';

class TwoInputsRow extends StatelessWidget {
  const TwoInputsRow({super.key, required this.titleRowOne, required this.unitRowOne, required this.titleRowTwo, required this.unitRowTwo});
final String titleRowOne;
final String unitRowOne;
final String titleRowTwo;
final String unitRowTwo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InputFieldRowBricks(
          rowTitle: titleRowOne,spaceBetweenTitleAndField: screenWidth*0.0,
          unit: unitRowOne,
          titleFontSize: screenWidth * 0.03, leftPaddingToWholeRow: screenWidth*0.0,
          wantShortField: true,
          rowWidth: screenWidth * 0.5,
          inputFieldWidth: screenWidth * 0.3, unitBoxSize: screenWidth*0.05
        ),
        InputFieldRowBricks(
          rowTitle: titleRowTwo, leftPaddingToWholeRow: screenWidth*0.0,
          unit: unitRowTwo,spaceBetweenTitleAndField: screenWidth*0.0,
          titleFontSize: screenWidth * 0.03,
          wantShortField: true,
          rowWidth: screenWidth * 0.5,
          inputFieldWidth: screenWidth * 0.2,
          removeInputFieldType: true, unitBoxSize: screenWidth*0.05
        ),
      ],
    );
  }
}
