import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/customBtn.dart';

class CalculateBtn extends StatelessWidget {
  const CalculateBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBtn(
      btnHeight: 0.06,
      btnWidth: 0.8,
      topRightBorderRadius: 5,
      topLeftBorderRadius: 5,
      bottomRightBorderRadius: 5,
      bottomLeftBorderRadius: 5,
      label: 'Calculate',
      onPress: () {},
      btnFontSize: 0.04,
      btnImgHeight: screenHeight*0.1, btnImgWidth: screenWidth*0.2,
    );
  }
}
