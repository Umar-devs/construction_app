import 'package:flutter/material.dart';

import '../../../../../../../Constants/constants.dart';
import 'input_field_row.dart';

class SubtractWindowOrDoorAreaComponent extends StatelessWidget {
  const SubtractWindowOrDoorAreaComponent(
      {super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return InputFieldRowBricks(
      rowTitle: 'Subtract Window\nor Door Area',
      unit: feetScreen ? 'Sq.Ft' : 'Sq.M',
      titleFontSize: screenWidth * 0.035,
      wantShortField: true,
      rowWidth: screenWidth,
      inputFieldWidth: screenWidth * 0.425,
      leftPaddingToWholeRow: screenWidth * 0.05,
      spaceBetweenTitleAndField: screenWidth * 0.18, unitBoxSize: screenWidth*0.09
    );
  }
}
