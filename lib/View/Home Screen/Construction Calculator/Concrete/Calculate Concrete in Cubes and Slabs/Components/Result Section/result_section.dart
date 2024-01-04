import 'package:construction_app/Controllers/Concrete%20Controller/flat_concrete_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import 'Components/results_title.dart';

class ResultSectionConcrete extends StatelessWidget {
  ResultSectionConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  final FlatConcreteController flatConcreteController =
      Get.put(FlatConcreteController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Obx(() => ResultsRow(
              title: 'Concrete Volume',
              result: feetScreen
                  ? '${flatConcreteController.concreteVolume.value.toStringAsFixed(3)} CFT'
                  : '${flatConcreteController.concreteVolume.value.toStringAsFixed(3)} m3',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Concrete Cost',
              result:
                  '${flatConcreteController.concreteCost.value.toStringAsFixed(3)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Cement Bags',
              result:
                  '${flatConcreteController.cementBags.value.toStringAsFixed(3)} Bags',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Cement Cost',
              result:
                  '${flatConcreteController.cementCost.value.toStringAsFixed(3)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Sand',
              result: feetScreen
                  ? '${flatConcreteController.sandCalculated.value.toStringAsFixed(3)} CFT'
                  : '${flatConcreteController.sandCalculated.value.toStringAsFixed(3)} m3',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Aggregate',
              result:
                  '${flatConcreteController.aggregateCalculated.value.toStringAsFixed(3)} CFT',
            )),
      ],
    );
  }
}
