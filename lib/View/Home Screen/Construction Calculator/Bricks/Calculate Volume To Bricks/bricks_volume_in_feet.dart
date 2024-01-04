import 'package:construction_app/Controllers/Bricks%20Controller/bricks_volume_controller.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../Constants/constants.dart';
import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class BricksVolumeInFeet extends StatefulWidget {
  const BricksVolumeInFeet({super.key});

  @override
  State<BricksVolumeInFeet> createState() => _BricksVolumeInFeetState();
}

class _BricksVolumeInFeetState extends State<BricksVolumeInFeet> {
  @override
  void initState() {
    super.initState();
    brickVolumeController.getLength(double.tryParse('9'));
    brickVolumeController.getWidth(double.tryParse('4.5'));
    brickVolumeController.getThick(double.tryParse('3'));
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
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                SectionTwoVolumeBricks(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                ResultSectionVolumeBricks(
                  feetScreen: true,
                ),
              ],
            ),
          ),
        ),
        title: 'Bricks Wall Volume Calculator');
  }
}
