import 'package:flutter/material.dart';

import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/customBtn.dart';

class CalculateBtn extends StatelessWidget {
  const CalculateBtn(
      {super.key, this.changeTitle = false, this.newTitle = 'Convert',  this.onTap});
  final bool changeTitle;
  final String newTitle;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return CustomBtn(
      btnHeight: 0.045,
      btnWidth: 0.6,
      topRightBorderRadius: 5,
      topLeftBorderRadius: 5,
      bottomRightBorderRadius: 5,
      bottomLeftBorderRadius: 5,
      label: changeTitle ? newTitle : 'CALCULATE',
      onPress: onTap!,
      btnFontSize: 0.035,
      btnImgHeight: screenHeight * 0.1,
      btnImgWidth: screenWidth * 0.2,
    );
  }
}
