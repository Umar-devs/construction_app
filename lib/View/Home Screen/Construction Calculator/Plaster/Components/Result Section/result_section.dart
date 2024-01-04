import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Plaster%20Controller/plaster_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Area/Circular Area/Components/Result Section/Components/results_title.dart';
import '../../../Room/Components/Result Section/Components/results_row.dart';

class ResultSectionPlaster extends StatelessWidget {
  ResultSectionPlaster({super.key, required this.feetScreen});
  final bool feetScreen;
  final PlasterController plasterController = Get.put(PlasterController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Obx(() => ResultsRowPlaster(
            title: 'Plaster Area',
            result: feetScreen
                ? '${plasterController.plasterArea.value.toStringAsFixed(3)} Sq.Ft'
                : '${plasterController.plasterArea.value.toStringAsFixed(3)} Sq.M')),
        Obx(() => ResultsRowPlaster(
            title: 'Plaster Cost',
            result:
                '${plasterController.plasterCost.value.toStringAsFixed(3)} Amount')),
        Obx(
          () => ResultsRowPlaster(
              title: 'Cement Bags',
              result:
                  '${plasterController.cementBags.value.toStringAsFixed(3)} Bags'),
        ),
        Obx(
          () => ResultsRowPlaster(
              title: 'Cement Cost',
              result:
                  '${plasterController.cementCost.value.toStringAsFixed(3)} Amount'),
        ),
        Obx(
          () => ResultsRowPlaster(
              title: 'Sand',
              result: feetScreen
                  ? '${plasterController.sandCalculate.value.toStringAsFixed(3)} CFT'
                  : '${plasterController.sandCalculate.value.toStringAsFixed(3)} Sq.M'),
        )
      ],
    );
  }
}
