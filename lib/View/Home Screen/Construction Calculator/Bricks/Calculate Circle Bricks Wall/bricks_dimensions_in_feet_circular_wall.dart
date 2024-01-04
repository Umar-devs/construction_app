import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Circle%20Bricks%20Wall/Components/subtract_window_or_door_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../Constants/constants.dart';
import '../../../../../Controllers/Bricks Controller/bricks_circular_controller.dart';
import '../../../../Components/custom_divider.dart';
import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class BricksDimensionsInFeetCircularWall extends StatefulWidget {
  const BricksDimensionsInFeetCircularWall({super.key});

  @override
  State<BricksDimensionsInFeetCircularWall> createState() =>
      _BricksDimensionsInFeetCircularWallState();
}

class _BricksDimensionsInFeetCircularWallState
    extends State<BricksDimensionsInFeetCircularWall> {
  final CircleBricksController circleBricksController =
      Get.put(CircleBricksController());
  @override
  void initState() {
    super.initState();
    circleBricksController.getDoorArea(double.tryParse('0'));
    circleBricksController.getLengthInBricksDimension(double.tryParse('9'));
    circleBricksController.getWidthInBricksDimension(double.tryParse('4.5'));
    circleBricksController.getThicknessOfBricks(double.tryParse('3'));
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
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const SubtractWindowOrDoorAreaComponentCircle(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                SectionTwoCircularWall(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                ResultSectionCircularWall(
                  feetScreen: true,
                ),
              ],
            ),
          ),
        ),
        title: 'Circle Bricks Wall Calculator');
  }
}
