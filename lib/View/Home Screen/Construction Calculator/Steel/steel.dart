import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/View/Components/customBtn.dart';
import 'package:construction_app/View/Components/custom_scaffold.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Steel/steel_quantity_wrt_feet.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Steel/steel_quantity_wrt_meters.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Steel extends StatelessWidget {
  const Steel({super.key});

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
                    'assets/images/Steel screen Img.jpg',
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
                      btnImgHeight: screenHeight*0.1, btnImgWidth: screenWidth*0.2,
                      onPress: () {
                        Get.to(const SteelQuantityInFeet(),
                            transition: Transition.size,
                            duration: const Duration(milliseconds: transitionTime));
                      },
                      btnFontSize: 0.05),
                ),
                CustomBtn(
                    btnImgHeight: screenHeight*0.1, btnImgWidth: screenWidth*0.2,
                    btnHeight: 0.08,
                    btnWidth: 0.8,
                    topRightBorderRadius: 5,
                    topLeftBorderRadius: 5,
                    bottomRightBorderRadius: 5,
                    bottomLeftBorderRadius: 5,
                    label: 'Meter',
                    onPress: () {
                      Get.to(const SteelQuantityInMeters(),
                          transition: Transition.size,
                          duration: const Duration(milliseconds: transitionTime));
                    },
                    btnFontSize: 0.05),
              ],
            ),
          ),
        ),
        title: 'Steel Unit');
  }
}
