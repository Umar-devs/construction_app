import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Bricks%20Controller/bricks_volume_controller.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class BricksVolumeInMeters extends StatefulWidget {
  const BricksVolumeInMeters({super.key});

  @override
  State<BricksVolumeInMeters> createState() => _BricksVolumeInMetersState();
}

class _BricksVolumeInMetersState extends State<BricksVolumeInMeters> {
  @override
  void initState() {
    super.initState();
    brickVolumeController.getLength(double.tryParse('200'));
    brickVolumeController.getWidth(double.tryParse('100'));
    brickVolumeController.getThick(double.tryParse('100'));
    brickVolumeController.getOneBrickPrice(double.tryParse('0'));
    brickVolumeController.getOneCementBagWeight(double.tryParse('50'));
    brickVolumeController.getNumberOfBags(double.tryParse('1'));
    brickVolumeController.getMortarRatioCement(double.tryParse('1'));
    brickVolumeController.getMortarRatioSand(double.tryParse('5'));
    brickVolumeController.getOneCementBag(double.tryParse('0'));
  }

  final BrickVolumeController brickVolumeController =
      Get.put(BrickVolumeController());
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
                const SectionOneBricksVolume(
                  feetScreen: false,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                //SectionTwo contains components before result section
                const CustomDivider(),
                const SizedBox(height: 10,),
                SectionTwoVolumeBricks(
                  feetScreen: false,
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                ResultSectionVolumeBricks(
                  feetScreen: false,
                ),
              ],
            ),
          ),
        ),
        title: 'Bricks Wall Volume Calculator');
  }
}
