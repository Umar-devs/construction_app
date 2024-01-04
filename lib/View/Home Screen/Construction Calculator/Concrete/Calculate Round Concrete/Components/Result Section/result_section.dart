import 'package:construction_app/Controllers/Concrete%20Controller/round_concrete.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import 'Components/results_title.dart';
import 'package:get/get.dart';

class ResultSectionRoundConcrete extends StatelessWidget {
  ResultSectionRoundConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  final RoundConcreteController roundConcreteController =
      Get.put(RoundConcreteController());
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
                  ? '${roundConcreteController.concreteVolume.value.toStringAsFixed(3)} CFT'
                  : '${roundConcreteController.concreteVolume.value.toStringAsFixed(3)} m3',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Concrete Cost',
              result:
                  '${roundConcreteController.concreteCost.value.toStringAsFixed(3)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Cement Bags',
              result:
                  '${roundConcreteController.cementBags.value.toStringAsFixed(3)} Bags',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Cement Cost',
              result:
                  '${roundConcreteController.cementCost.value.toStringAsFixed(3)} Amount',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Sand',
              result: feetScreen
                  ? '${roundConcreteController.sandCalculated.value.toStringAsFixed(3)} CFT'
                  : '${roundConcreteController.sandCalculated.value.toStringAsFixed(3)} m3',
            )),
        SizedBox(height: screenHeight*0.005,),
        Obx(() => ResultsRow(
              title: 'Aggregate',
              result: feetScreen
                  ? '${roundConcreteController.aggregateCalculated.value.toStringAsFixed(3)} CFT'
                  : '${roundConcreteController.aggregateCalculated.value.toStringAsFixed(3)} m3',
            )),
      ],
    );
  }
}
