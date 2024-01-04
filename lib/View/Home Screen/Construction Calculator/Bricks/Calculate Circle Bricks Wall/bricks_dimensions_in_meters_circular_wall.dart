import 'package:construction_app/Controllers/Bricks%20Controller/bricks_circular_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../Constants/constants.dart';
import '../../../../Components/custom_divider.dart';
import '../../../../Components/custom_scaffold.dart';
import '../Calculate Bricks Wall/Components/subtract_window_or_door_area.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class BricksDimensionsInMetersCircularWall extends StatefulWidget {
  const BricksDimensionsInMetersCircularWall({super.key});

  @override
  State<BricksDimensionsInMetersCircularWall> createState() =>
      _BricksDimensionsInMetersCircularWallState();
}

class _BricksDimensionsInMetersCircularWallState
    extends State<BricksDimensionsInMetersCircularWall> {
  final CircleBricksController circleBricksController=Get.put(CircleBricksController());
  @override
  void initState() {
    super.initState();
    circleBricksController.getDoorArea(double.tryParse('0'));
    circleBricksController.getLengthInBricksDimension(double.tryParse('200'));
    circleBricksController.getWidthInBricksDimension(double.tryParse('100'));
    circleBricksController.getThicknessOfBricks(double.tryParse('100'));
    circleBricksController.getOneBrickPrice(double.tryParse('0'));
    circleBricksController.getCementBagWeight(double.tryParse('50'));
    circleBricksController.getMortarRatioCement(double.tryParse('1'));
    circleBricksController.getMortarRatioSand(double.tryParse('5'));
    circleBricksController.getOneCementBagPrice(double.tryParse('0'));
    circleBricksController.getCementBagNumbers(double.tryParse('1'));
  }
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
                const SectionOneCircularWall(
                  feetScreen: false,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const SubtractWindowOrDoorAreaComponent(
                  feetScreen: false,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                SectionTwoCircularWall(
                  feetScreen: false,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                ResultSectionCircularWall(
                  feetScreen: false,
                ),
              ],
            ),
          ),
        ),
        title: 'Circle Bricks Wall Calculator');
  }
}
