import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';
import '../../../../Components/custom_divider.dart';
import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';
import 'Components/subtract_window_or_door_area.dart';
import 'package:get/get.dart';
import 'package:construction_app/Controllers/Bricks Controller/bricks_wall_controller.dart';
class BricksDimensionsInMeters extends StatefulWidget {
  const BricksDimensionsInMeters({super.key});

  @override
  State<BricksDimensionsInMeters> createState() => _BricksDimensionsInMetersState();
}

class _BricksDimensionsInMetersState extends State<BricksDimensionsInMeters> {
  final BricksController bricksController =Get.put(BricksController());
  @override
  void initState(){
    super.initState();
    bricksController.getThicknessMeters(double.tryParse('90'));
    bricksController.getDoorArea(double.tryParse('0'));
    bricksController.getLengthInBrickDimensionMeters(double.tryParse('200'));
    bricksController.getWidthInBrickDimensionMeters(double.tryParse('100'));
    bricksController.getThicknessInBrickDimensionMeters(double.tryParse('100'));
    bricksController.getOneBrickPrice(double.tryParse('0'));
    bricksController.getWeightOfCementBag(double.tryParse('50'));
    bricksController.getQuantityInBrickDimension(double.tryParse('1'));
    bricksController.getMortarRatioCement(double.tryParse('1'));
    bricksController.getMortarRatioSand(double.tryParse('5'));
    bricksController.getOneCementBagPriceMeters(double.tryParse('0'));
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
                const SectionOne(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const SubtractWindowOrDoorAreaComponent(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                 SectionTwo(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                 ResultSection(feetScreen: false,),
              ],
            ),
          ),
        ),
        title: 'Calculate Bricks Quantity');
  }
}
