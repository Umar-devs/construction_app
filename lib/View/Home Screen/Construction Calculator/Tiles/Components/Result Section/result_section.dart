import 'package:construction_app/Controllers/Tiles%20Controller/tiles_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import 'Components/results_title.dart';

class ResultSectionTiles extends StatelessWidget {
  ResultSectionTiles({super.key, required this.feetScreen});
  final bool feetScreen;
  final TilesController tilesController = Get.put(TilesController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Obx(() => ResultsRow(
              title: 'Total Area',
              result: feetScreen
                  ? '${tilesController.totalArea.value.toStringAsFixed(3)} sq.Ft'
                  : '${tilesController.totalArea.value.toStringAsFixed(3)} sq.M',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Number of Tiles',
              result:
                  '${tilesController.numOfTiles.value.toStringAsFixed(3)} Tiles',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Total Tiles cost in\nSq.Ft',
              result:
                  '${tilesController.tilesCostInSqFt.value.toStringAsFixed(3)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Total Tiles cost in\nSq.M',
              result:
                  '${tilesController.tilesCostInSqM.value.toStringAsFixed(3)} Amount',
            )),
      ],
    );
  }
}
