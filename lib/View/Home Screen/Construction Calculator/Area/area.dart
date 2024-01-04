import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/View/Components/customBtn.dart';
import 'package:construction_app/View/Components/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Circular Area/circular_area_in_feet.dart';
import 'Parallelogram Area/parallelogram_area_in_feet.dart';
import 'Square and Rectangular area/square_and_rec_area_in_feet.dart';
import 'Trapezoid Area/trapezoid_area_in_feet.dart';
import 'Triangular Area/triangular_area_in_meters.dart';

class Area extends StatelessWidget {
  const Area({super.key});

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
                  height: screenHeight * 0.27,
                  width: screenWidth,
                  child: Image.asset(
                    'assets/images/Area screen.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
                  child: CustomBtn(
                      btnHeight: 0.06,
                      btnWidth: 0.8,
                      topRightBorderRadius: 5,
                      topLeftBorderRadius: 5,
                      bottomRightBorderRadius: 5,
                      bottomLeftBorderRadius: 5,
                      wantImg: true,
                      btnImgPath:
                          'assets/images/Square and rectangle area background rem.png',
                      label: 'Square and Rectangular Area',
                      onPress: () {
                        Get.to(const SquareAndRectangularAreaInFeet(),
                            transition: Transition.size,
                            duration: const Duration(milliseconds: transitionTime));
                      },
                      btnFontSize: 0.03, btnImgHeight: screenWidth * 0.2, btnImgWidth: screenWidth * 0.2,),
                ),
                CustomBtn(
                    btnHeight: 0.06,
                    btnWidth: 0.8,
                    topRightBorderRadius: 5,
                    topLeftBorderRadius: 5,
                    bottomRightBorderRadius: 5,
                    bottomLeftBorderRadius: 5,
                    wantImg: true,
                    btnImgPath:
                        'assets/images/Trapezoid_Area__Foot___2_-remove-preview.png',
                    label: 'Trapezoid Area                          ',
                    onPress: () {
                      Get.to(const TrapezoidAreaInFeet(),
                          transition: Transition.size,
                          duration: const Duration(milliseconds: transitionTime));
                    },
                    btnFontSize: 0.03, btnImgHeight: screenHeight * 0.2, btnImgWidth: screenWidth * 0.2,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
                  child: CustomBtn(
                      btnHeight: 0.06,
                      btnWidth: 0.8,
                      topRightBorderRadius: 5,
                      topLeftBorderRadius: 5,
                      bottomRightBorderRadius: 5,
                      bottomLeftBorderRadius: 5,
                      wantImg: true,
                      btnImgPath:
                          'assets/images/Triangle_Area__Foot___2_-remove-preview.png',
                      label: 'Triangular Area                          ',
                      onPress: () {
                        Get.to(const TriangularAreaInMeters(),
                            transition: Transition.size,
                            duration: const Duration(milliseconds: transitionTime));
                      },
                      btnFontSize: 0.03, btnImgHeight: screenHeight*0.1, btnImgWidth: screenWidth * 0.2,),
                ),
                CustomBtn(
                    btnHeight: 0.06,
                    btnWidth: 0.8,
                    topRightBorderRadius: 5,
                    topLeftBorderRadius: 5,
                    bottomRightBorderRadius: 5,
                    bottomLeftBorderRadius: 5,
                    wantImg: true,
                    btnImgPath:
                        'assets/images/Circle_Area__Foot____2_-remove-preview.png',
                    label: 'Circle Area                                 ',
                    onPress: () {
                      Get.to(const CircularAreaInFeet(),
                          transition: Transition.size,
                          duration: const Duration(milliseconds: transitionTime));
                    },
                    btnFontSize: 0.03, btnImgHeight: screenHeight*0.1, btnImgWidth: screenWidth * 0.2,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
                  child: CustomBtn(
                      btnHeight: 0.06,
                      btnWidth: 0.8,
                      topRightBorderRadius: 5,
                      topLeftBorderRadius: 5,
                      bottomRightBorderRadius: 5,
                      bottomLeftBorderRadius: 5,
                      wantImg: true,
                      btnImgPath:
                          'assets/images/Parallelogram_Area__Foot____2_-remove-preview.png',
                      label: 'Parallelogram Area                  ',
                      onPress: () {
                        Get.to(const ParallelogramAreaInFeet(),
                            transition: Transition.size,
                            duration: const Duration(milliseconds: transitionTime));
                      },
                      btnFontSize: 0.03, btnImgHeight: screenHeight*0.1, btnImgWidth: screenWidth * 0.2,),
                ),
              ],
            ),
          ),
        ),
        title: 'Area Unit');
  }
}
