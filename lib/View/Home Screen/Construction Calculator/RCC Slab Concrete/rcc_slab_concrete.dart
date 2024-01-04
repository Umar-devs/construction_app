import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/View/Components/customBtn.dart';
import 'package:construction_app/View/Components/custom_scaffold.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/RCC%20Slab%20Concrete/rcc_slab_concrete_in_feet.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/RCC%20Slab%20Concrete/rcc_slab_concrete_in_meters.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RCCSlabScreen extends StatelessWidget {
  const RCCSlabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        scaffoldChild: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.35,
                  width: screenWidth,
                  child: Image.asset(
                    'assets/images/RCC Slab Concrete screen Img.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
                  child: CustomBtn(
                    btnHeight: 0.08,
                    btnWidth: 0.8,
                    topRightBorderRadius: 5,
                    topLeftBorderRadius: 5,
                    bottomRightBorderRadius: 5,
                    bottomLeftBorderRadius: 5,
                    label: 'Feet',
                    onPress: () {
                      Get.to(const RCCSlabDimensionsInFeet(),
                          transition: Transition.size,
                          duration: const Duration(milliseconds: transitionTime));
                    },
                    btnFontSize: 0.05, btnImgHeight: screenHeight*0.1, btnImgWidth: screenWidth*0.2,),
                ),
                CustomBtn(
                    btnHeight: 0.08,
                    btnWidth: 0.8,
                    btnImgHeight: screenHeight*0.1, btnImgWidth: screenWidth*0.2,
                    topRightBorderRadius: 5,
                    topLeftBorderRadius: 5,
                    bottomRightBorderRadius: 5,
                    bottomLeftBorderRadius: 5,
                    label: 'Meter',
                    onPress: () {
                      Get.to(const RCCSlabDimensionsInMeters(),
                          transition: Transition.size,
                          duration: const Duration(milliseconds: transitionTime));
                    },
                    btnFontSize: 0.05),
              ],
            ),
          ),
        ),
        title: 'RCC Slab Concrete Unit');
  }
}
