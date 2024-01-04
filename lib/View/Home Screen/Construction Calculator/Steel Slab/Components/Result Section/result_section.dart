import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Slab%20Steel%20Controller/slab_steel.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Area/Circular%20Area/Components/Result%20Section/Components/results_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Components/results_title.dart';

class ResultSectionSlabSteel extends StatelessWidget {
  ResultSectionSlabSteel({super.key, required this.feetScreen});
  final bool feetScreen;
  final SlabSteelController slabSteelController =
      Get.put(SlabSteelController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.047),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const ResultsTitle(),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Obx(() => ResultsRow(
              title: 'Total Slab Area',
              result: feetScreen
                  ? '${slabSteelController.totalArea.value.toStringAsFixed(3)} Sq.Ft'
                  : '${slabSteelController.totalArea.value.toStringAsFixed(3)} Sq.M')),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Obx(() => ResultsRow(
              title: 'Total Required Steel',
              result: feetScreen
                  ? '${slabSteelController.totalRequiredSteelInKgFeet.value.toStringAsFixed(3)} Kg'
                  : '${slabSteelController.totalRequiredSteelInKgMeters.value.toStringAsFixed(3)} Kg')),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Obx(() => ResultsRow(
              title: 'Total Required Steel',
              result:
                  '${slabSteelController.totalRequiredSteelInTon.value.toStringAsFixed(3)} Ton')),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Obx(() => ResultsRow(
              title: 'Total Required Steel\nCost',
              result:
                  '${slabSteelController.totalRequiredSteelCost.value.toStringAsFixed(3)} Amount')),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Obx(() => ResultsRow(
              title: 'Total Required Pieces\nFor Long Bar',
              result:
                  '${slabSteelController.totalRequiredPiecesForLongBar.value.toStringAsFixed(3)} Pieces')),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Obx(() => ResultsRow(
              title: 'Total Required Pieces\nFor Short Bar',
              result:
                  '${slabSteelController.totalRequiredPiecesForShortBar.value.toStringAsFixed(3)} Pieces')),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Obx(() => ResultsRow(
              title: 'Long Bar Pieces\nLength',
              result:
                  '${slabSteelController.longBarPieceLength.value.toStringAsFixed(3)} Ft')),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Obx(() => ResultsRow(
              title: 'Short Bar Pieces\nLength',
              result:
                  '${slabSteelController.shortBarPieceLength.value.toStringAsFixed(3)} Ft')),
        ],
      ),
    );
  }
}
