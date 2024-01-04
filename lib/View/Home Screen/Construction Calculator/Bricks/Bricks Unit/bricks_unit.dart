import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Circle%20Bricks%20Wall/bricks_dimensions_in_feet_circular_wall.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Circle%20Bricks%20Wall/bricks_dimensions_in_meters_circular_wall.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Volume%20To%20Bricks/bricks_volume_in_feet.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Volume%20To%20Bricks/bricks_volume_in_meters.dart';
import 'package:flutter/material.dart';
import '../../../../../../Constants/constants.dart';
import '../../../../Components/custom_scaffold.dart';
import '../Calculate Bricks Wall/bricks_dimensions_in_feet.dart';
import '../Calculate Bricks Wall/bricks_wall_in_meters.dart';
import 'Components/calculation.dart';
import 'package:get/get.dart';

class BricksUnit extends StatelessWidget {
  const BricksUnit({super.key});

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
                  height: screenHeight * 0.03,
                ),
                ReusableText(
                    title: 'Calculate Bricks Wall',
                    fontSize: screenWidth * 0.04,
                    weight: FontWeight.w500,
                    clr: Colors.white),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculationBox(
                      tap: () {
                        Get.to(const BricksDimensionsInFeet(),
                            duration: const Duration(milliseconds: 400),
                            transition: Transition.size);
                      },
                      calculationType: 'Feet',
                      imgPath: 'assets/images/brick unit wall.png',
                    ),
                    CalculationBox(
                      tap: () {
                        Get.to(const BricksDimensionsInMeters(),
                            duration: const Duration(milliseconds: 400),
                            transition: Transition.size);
                      },
                      calculationType: 'Meters',
                      imgPath: 'assets/images/brick unit wall.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ReusableText(
                    title: 'Calculate Circle Bricks Wall',
                    fontSize: screenWidth * 0.04,
                    weight: FontWeight.w500,
                    clr: Colors.white),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculationBox(
                      tap: () {
                        Get.to(const BricksDimensionsInFeetCircularWall(),
                            duration: const Duration(milliseconds: 400),
                            transition: Transition.size);
                      },
                      calculationType: 'Feet',
                      imgPath:
                          'assets/images/circular wall bricks unit small img.png',
                    ),
                    CalculationBox(
                      tap: () {
                        Get.to(const BricksDimensionsInMetersCircularWall(),
                            duration: const Duration(milliseconds: 400),
                            transition: Transition.size);
                      },
                      calculationType: 'Meters',
                      imgPath:
                          'assets/images/circular wall bricks unit small img.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ReusableText(
                    title: 'Calculate Volume to Bricks',
                    fontSize: screenWidth * 0.04,
                    weight: FontWeight.w500,
                    clr: Colors.white),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculationBox(
                      tap: () {
                        Get.to(const BricksVolumeInFeet(),
                            duration: const Duration(milliseconds: 400),
                            transition: Transition.size);
                      },
                      calculationType: 'Feet',
                      imgPath: 'assets/images/brick unit wall.png',
                    ),
                    CalculationBox(
                      tap: () {
                        Get.to(const BricksVolumeInMeters(),
                            duration: const Duration(milliseconds: 400),
                            transition: Transition.size);
                      },
                      calculationType: 'Meters',
                      imgPath: 'assets/images/brick unit wall.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        title: 'Bricks Unit');
  }
}
