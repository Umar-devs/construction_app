import 'package:construction_app/Controllers/Bricks%20Controller/bricks_wall_controller.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import 'Components/results_title.dart';
import 'package:get/get.dart';

class ResultSection extends StatelessWidget {
  ResultSection({super.key, required this.feetScreen});
  final bool feetScreen;
  final BricksController bricksController = Get.put(BricksController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Obx(() => ResultsRow(
              title: 'Total Volume',
              result: feetScreen
                  ? '${bricksController.volumeFeet.value.toStringAsFixed(3)} CFT'
                  : '${bricksController.volumeMeter.value.toStringAsFixed(3)} m3',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Brick Cost',
              result:
                  '${bricksController.bricksCost.value.toStringAsFixed(0)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Cement Bags',
              result: feetScreen
                  ? '${bricksController.totalCementBagsFeet.value.toStringAsFixed(3)} Bags'
                  : '${bricksController.totalCementBagsMeters.value.toStringAsFixed(3)} Bags',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Cement Cost',
              result: feetScreen
                  ? '${bricksController.cementCostFeet.value.toStringAsFixed(3)} Amount'
                  : '${bricksController.cementCostMeters.value.toStringAsFixed(3)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Sand',
              result: feetScreen
                  ? '${bricksController.totalSandVolumeFeet.value.toStringAsFixed(3)} CFT'
                  : '${bricksController.totalSandVolumeMeters.value.toStringAsFixed(3)} m3',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(
          () => ResultsRow(
            title: 'Number of Bricks',
            result: feetScreen
                ? '${bricksController.totalNumberOfBricksFeet.value.toStringAsFixed(3)} Bricks'
                : '${bricksController.totalNumberOfBricksMeters.value.toStringAsFixed(3)} Bricks',
          ),
        )
      ],
    );
  }
}
