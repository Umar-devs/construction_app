import 'package:flutter/material.dart';

import '../../../../../../../Constants/constants.dart';
import 'input_field_row.dart';

class SubtractWindowOrDoorAreaComponentCircle extends StatelessWidget {
  const SubtractWindowOrDoorAreaComponentCircle({super.key, required this.feetScreen});
final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return  InputFieldRowCircleBricks(
      rowTitle: 'Subtract Window\nor Door Area',
      unit: feetScreen?'sq.Ft':'sq.M',
      titleFontSize: screenWidth * 0.033,
      leftPaddingToWholeRow: 0,
      spaceBetweenTitleAndField: 0, feetScreen: feetScreen, unitBoxSize:  screenWidth*0.085,
    );
  }
}
