import 'package:construction_app/Controllers/Bricks%20Controller/bricks_volume_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import '../../../Calculate Bricks Wall/Components/Result Section/Components/results_title.dart';

class ResultSectionVolumeBricks extends StatelessWidget {
  ResultSectionVolumeBricks({super.key, required this.feetScreen});
  final bool feetScreen;
  final BrickVolumeController brickVolumeController =
      Get.put(BrickVolumeController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Obx(() => ResultsRow(
              title: 'Total Volume',
              result: feetScreen
                  ? '${brickVolumeController.totalVolume.value.toStringAsFixed(3)} CFT'
                  : '${brickVolumeController.totalVolume.value.toStringAsFixed(3)} m3',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Brick Cost',
              result:
                  '${brickVolumeController.brickCost.value.toStringAsFixed(3)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Cement Bags',
              result: '${brickVolumeController.cementBags.value.toStringAsFixed(3)} Bags',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Cement Cost',
              result:
                  '${brickVolumeController.cementCost.value.toStringAsFixed(3)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Sand',
              result: feetScreen
                  ? '${brickVolumeController.sand.value.toStringAsFixed(3)} CFT'
                  : '${brickVolumeController.sand.value.toStringAsFixed(3)} m3',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Number of Bricks',
              result: '${brickVolumeController.numberOfBricks.value.toStringAsFixed(3)} Bricks',
            )),
      ],
    );
  }
}
