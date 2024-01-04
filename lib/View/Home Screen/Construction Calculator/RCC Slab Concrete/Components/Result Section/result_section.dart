import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Rcc%20Concrete%20Controller/rcc_concrete_controller.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Area/Circular%20Area/Components/Result%20Section/Components/results_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Area/Circular Area/Components/Result Section/Components/results_title.dart';

class ResultSectionRCCSlabConcrete extends StatelessWidget {
  ResultSectionRCCSlabConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  final RccSlabConcreteController rccSlabConcreteController =
      Get.put(RccSlabConcreteController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ResultsTitle(),
        ReusableText(
            title: 'Quantity of Slab Steel Results',
            fontSize: screenWidth * 0.035,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Obx(() => ResultsRow(
            title: 'Total Slab Area = ',
            result: feetScreen
                ? '${rccSlabConcreteController.totalSlabArea.value.toStringAsFixed(3)} Sq.Ft'
                : '${rccSlabConcreteController.totalSlabArea.value.toStringAsFixed(3)} m3')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Total Required Steel = ',
            result:
                '${rccSlabConcreteController.totalRequiredSteelKg.value.toStringAsFixed(3)} Kg')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Total Required Steel = ',
            result:
                '${rccSlabConcreteController.totalRequiredSteelTon.value.toStringAsFixed(3)} Ton')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Total Required Steel Cost = ',
            result:
                '${rccSlabConcreteController.totalRequiredSteelCost.value.toStringAsFixed(3)} Amount')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Required Pieces For\nLong Bar = ',
            result:
                '${rccSlabConcreteController.reqPiecesForLongBar.value.toStringAsFixed(3)} Pieces')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Required Pieces For\nShort Bar = ',
            result:
                '${rccSlabConcreteController.reqPiecesForShortBar.value.toStringAsFixed(3)} Pieces')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Long Bar Piece Length = ',
            result: feetScreen
                ? '${rccSlabConcreteController.longBarPieceLength.value.toStringAsFixed(3)} Ft'
                : '${rccSlabConcreteController.longBarPieceLength.value.toStringAsFixed(3)} M')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Short Bar Piece Length = ',
            result: feetScreen
                ? '${rccSlabConcreteController.shortBarPieceLength.value.toStringAsFixed(3)} Ft'
                : '${rccSlabConcreteController.shortBarPieceLength.value.toStringAsFixed(3)} M')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        ReusableText(
            title: 'Quantity of Slab Concrete Results',
            fontSize: screenWidth * 0.035,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Obx(() => ResultsRow(
            title: 'Total Slab Volume = ',
            result: feetScreen
                ? '${rccSlabConcreteController.totalSlabVolume.value.toStringAsFixed(3)} CFT'
                : '${rccSlabConcreteController.totalSlabVolume.value.toStringAsFixed(3)} m3')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Total Cement Bag = ',
            result:
                '${rccSlabConcreteController.totalCementBag.value.toStringAsFixed(3)} Bags')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Total Cement Cost = ',
            result:
                '${rccSlabConcreteController.totalCementCost.value.toStringAsFixed(0)} Amount')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Total Aggregate = ',
            result: feetScreen
                ? '${rccSlabConcreteController.totalAggregate.value.toStringAsFixed(3)} CFT'
                : '${rccSlabConcreteController.totalAggregate.value.toStringAsFixed(3)} m3')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
            title: 'Total Sand = ',
            result: feetScreen
                ? '${rccSlabConcreteController.totalSand.value.toStringAsFixed(3)} CFT'
                : '${rccSlabConcreteController.totalSand.value.toStringAsFixed(3)} m3')),
        SizedBox(
          height: screenHeight * 0.005,
        ),
      ],
    );
  }
}
