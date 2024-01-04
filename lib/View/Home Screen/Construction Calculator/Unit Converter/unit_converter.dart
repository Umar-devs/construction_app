import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/View/Components/customBtn.dart';
import 'package:construction_app/View/Components/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Area Unit Converter/area_unit_converter.dart';
import 'Distance/distance.dart';
import 'Volume Unit Converter/volume_unit_converter.dart';
import 'Weight Unit Converter/weight_unit_converter.dart';

class UnitConverter extends StatelessWidget {
  const UnitConverter({super.key});

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
                  height: screenHeight * 0.3,
                  width: screenWidth,
                  child: Image.asset(
                    'assets/images/Unit Converter Image Screen.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
                  child: CustomBtn(
                      btnHeight: 0.055,
                      btnWidth: 0.8,
                      topRightBorderRadius: 5,
                      topLeftBorderRadius: 5,
                      bottomRightBorderRadius: 5,
                      bottomLeftBorderRadius: 5,
                      wantImg: true,
                      btnImgHeight: screenHeight * 0.07,
                      btnImgWidth: screenWidth * 0.2,
                      btnImgPath:
                          'assets/images/Distance_unit_converter__2.png',
                      label: 'Distance                               ',
                      onPress: () {
                        Get.to(const DistanceConverter(),
                            transition: Transition.size,
                            duration: const Duration(milliseconds: transitionTime));
                      },
                      btnFontSize: 0.03),
                ),
                CustomBtn(
                    btnHeight: 0.055,
                    btnWidth: 0.8,
                    btnImgHeight: screenHeight * 0.07,
                    btnImgWidth: screenWidth * 0.1,
                    topRightBorderRadius: 5,
                    topLeftBorderRadius: 5,
                    bottomRightBorderRadius: 5,
                    bottomLeftBorderRadius: 5,
                    wantImg: true,
                    btnImgPath: 'assets/images/Area unit converter_ (2).png',
                    label: 'Area                                           ',
                    onPress: () {
                      Get.to(const AreaUnitConverter(),
                          transition: Transition.size,
                          duration: const Duration(milliseconds: transitionTime));
                    },
                    btnFontSize: 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
                  child: CustomBtn(
                      btnImgHeight: screenHeight * 0.07,
                      btnImgWidth: screenWidth * 0.15,
                      btnHeight: 0.055,
                      btnWidth: 0.8,
                      topRightBorderRadius: 5,
                      topLeftBorderRadius: 5,
                      bottomRightBorderRadius: 5,
                      bottomLeftBorderRadius: 5,
                      wantImg: true,
                      btnImgPath: 'assets/images/Volume unit converter (2).png',
                      label: 'Volume                                       ',
                      onPress: () {
                        Get.to(const VolumeConverter(),
                            transition: Transition.size,
                            duration: const Duration(milliseconds: transitionTime));
                      },
                      btnFontSize: 0.03),
                ),
                CustomBtn(
                    btnHeight: 0.055,
                    btnWidth: 0.8,
                    topRightBorderRadius: 5,
                    topLeftBorderRadius: 5,
                    bottomRightBorderRadius: 5,
                    bottomLeftBorderRadius: 5,
                    wantImg: true,
                    btnImgHeight: screenHeight * 0.07,
                    btnImgWidth: screenWidth * 0.15,
                    btnImgPath: 'assets/images/Weight_unit_converter__2.png',
                    label: 'Weight                                          ',
                    onPress: () {
                      Get.to(const WeightConverter(),
                          transition: Transition.size,
                          duration: const Duration(milliseconds: transitionTime));
                    },
                    btnFontSize: 0.03),
              ],
            ),
          ),
        ),
        title: 'Unit Converter');
  }
}
