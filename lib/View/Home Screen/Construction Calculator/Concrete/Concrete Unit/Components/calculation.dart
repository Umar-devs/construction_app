import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/customBtn.dart';
import '../../../../../Components/reusable_txt.dart';

class CalculationConcreteUnit extends StatelessWidget {
  const CalculationConcreteUnit(
      {super.key,
      required this.calculationTitle,
      required this.imgPath,
      required this.firstBtnLabel,
      required this.secBtnLabel,
      required this.firstBtnOnTap,
      required this.secBtnOnTap});
  final String calculationTitle;
  final String imgPath;
  final String firstBtnLabel;
  final String secBtnLabel;
  final VoidCallback firstBtnOnTap;
  final VoidCallback secBtnOnTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.4,
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ReusableText(
              title: calculationTitle,
              fontSize: screenWidth * 0.045,
              weight: FontWeight.w500,
              clr: Colors.white),
          SizedBox(
            height: screenHeight * 0.18,
            width: screenWidth * 0.55,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBtn(
                btnImgHeight: screenHeight * 0.06,
                btnImgWidth: screenWidth * 0.2,
                btnHeight: 0.06,
                btnWidth: 0.3,
                topRightBorderRadius: 7,
                topLeftBorderRadius: 7,
                bottomRightBorderRadius: 7,
                bottomLeftBorderRadius: 7,
                label: firstBtnLabel,
                onPress: firstBtnOnTap,
                btnFontSize: 0.035,
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              CustomBtn(
                btnImgHeight: screenHeight * 0.1,
                btnImgWidth: screenWidth * 0.2,
                btnHeight: 0.06,
                btnWidth: 0.3,
                topRightBorderRadius: 7,
                topLeftBorderRadius: 7,
                bottomRightBorderRadius: 7,
                bottomLeftBorderRadius: 7,
                label: secBtnLabel,
                onPress: secBtnOnTap,
                btnFontSize: 0.035,
              ),
            ],
          )
        ],
      ),
    );
  }
}
