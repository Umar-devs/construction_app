import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/View/Components/customBtn.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Blocks/Components/top_image_and_text_box.dart';
import '../../circular_area_in_feet.dart';
import '../../circular_area_in_meters.dart';

class SectionOneCircularArea extends StatelessWidget {
  const SectionOneCircularArea({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.025,
        ),
        const TitleBoxWithImageBlocks(
            imgPath: 'assets/images/circle area top img.png',
            title: 'Calculate Circular\nArea'),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        ReusableText(
            title: 'Active Unit Area',
            fontSize: screenWidth * 0.035,
            weight: FontWeight.w700,
            clr: Colors.white.withOpacity(0.9)),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        CustomBtn(
            btnHeight: 0.045,
            btnWidth: 0.5,
            topRightBorderRadius: 5,
            topLeftBorderRadius: 5,
            bottomRightBorderRadius: 5,
            bottomLeftBorderRadius: 5,
            btnImgWidth: screenWidth * 0.2,
            btnImgHeight: screenHeight * 0.1,
            label: feetScreen ? 'Check For Maters' : 'Check For Feet',
            onPress: () {
              feetScreen
                  ? Get.to(const CircularAreaInMeters(),
                      transition: Transition.size,
                      duration: const Duration(milliseconds: 1200))
                  : Get.to(const CircularAreaInFeet(),
                      transition: Transition.size,
                      duration: const Duration(milliseconds: 1200));
            },
            btnFontSize: 0.035)
      ],
    );
  }
}
