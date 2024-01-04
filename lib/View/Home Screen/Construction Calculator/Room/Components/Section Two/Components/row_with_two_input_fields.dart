import 'package:flutter/material.dart';
import '../../../../../../../../../Constants/constants.dart';
import '../../../../Plaster/Components/input_field.dart';


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
        InputFieldRowPlaster(
          rowTitle: titleRowOne,
          unit: unitRowOne,
          titleFontSize: screenWidth * 0.03,
          wantShortField: true,
          rowWidth: screenWidth * 0.5,
          inputFieldWidth: screenWidth * 0.3,
        ),
        InputFieldRowPlaster(
          rowTitle: titleRowTwo,
          unit: unitRowTwo,
          titleFontSize: screenWidth * 0.03,
          wantShortField: true,
          rowWidth: screenWidth * 0.5,
          inputFieldWidth: screenWidth * 0.2,
          removeUnitType: true,
        ),
      ],
    );
  }
}
