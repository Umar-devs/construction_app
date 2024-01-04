import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Bricks%20Controller/bricks_wall_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Components/custom_divider.dart';
import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';
import 'Components/subtract_window_or_door_area.dart';

class BricksDimensionsInFeet extends StatefulWidget {
  const BricksDimensionsInFeet({super.key});

  @override
  State<BricksDimensionsInFeet> createState() => _BricksDimensionsInFeetState();
}

class _BricksDimensionsInFeetState extends State<BricksDimensionsInFeet> {
  final BricksController bricksController =Get.put(BricksController());
  @override
  void initState(){
    super.initState();
    bricksController.getThicknessFeet(double.tryParse('9'));
    bricksController.getDoorArea(double.tryParse('0'));
    bricksController.getLengthInBrickDimensionFeet(double.tryParse('9'));
    bricksController.getWidthInBrickDimensionFeet(double.tryParse('4.5'));
    bricksController.getThicknessInBrickDimensionFeet(double.tryParse('3'));
    bricksController.getOneBrickPrice(double.tryParse('0'));
    bricksController.getWeightOfCementBag(double.tryParse('50'));
    bricksController.getQuantityInBrickDimension(double.tryParse('1'));
    bricksController.getMortarRatioCement(double.tryParse('1'));
    bricksController.getMortarRatioSand(double.tryParse('5'));
    bricksController.getOneCementBagPriceFeet(double.tryParse('0'));
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
                //SectionOne() include components from start of screen to before first divider
                const SectionOne(feetScreen: true,),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const SubtractWindowOrDoorAreaComponent(feetScreen: true,),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                 SectionTwo(feetScreen: true,),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                 ResultSection(feetScreen: true,),
              ],
            ),
          ),
        ),
        title: 'Calculate Bricks Quantity');
  }
}
