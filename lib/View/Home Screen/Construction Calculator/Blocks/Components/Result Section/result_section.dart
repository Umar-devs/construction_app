import 'package:construction_app/Controllers/Block%20Controller/block_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';
import 'Components/results_title.dart';

class ResultSectionBlocks extends StatelessWidget {
  ResultSectionBlocks({super.key, required this.feetScreen});
  final bool feetScreen;
  final BlockController blockController = Get.put(BlockController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        SizedBox(
          width: screenWidth,
          height: screenHeight * 0.05,
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05, right: screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableText(
                    title: 'Number Of Blocks',
                    fontSize: screenWidth * 0.035,
                    weight: FontWeight.w500,
                    clr: Colors.white),
                Container(
                  height: screenHeight * 0.035,
                  width: screenWidth * 0.55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff262626),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          height: screenHeight * 0.035,
                          width: screenWidth * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff008FFF),
                                  Color(0xff00227E),
                                ]),
                          ),
                          child: Center(
                            child: ReusableText(
                                title: 'No',
                                fontSize: screenWidth * 0.025,
                                weight: FontWeight.bold,
                                clr: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                          child: Center(
                        child: Obx(() => ReusableText(
                            title: feetScreen
                                ? blockController.numOfBlocks.value
                                    .toStringAsFixed(3)
                                : blockController.numOfBlocksMeters.value
                                    .toStringAsFixed(3),
                            fontSize: screenWidth * 0.04,
                            weight: FontWeight.w500,
                            clr: Colors.white)),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: screenWidth,
          height: screenHeight * 0.05,
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05, right: screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableText(
                    title: 'Blocks Cost',
                    fontSize: screenWidth * 0.035,
                    weight: FontWeight.w500,
                    clr: Colors.white),
                Container(
                  height: screenHeight * 0.035,
                  width: screenWidth * 0.55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff262626),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          height: screenHeight * 0.035,
                          width: screenWidth * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff008FFF),
                                  Color(0xff00227E),
                                ]),
                          ),
                          child: Center(
                            child: ReusableText(
                                title: 'No',
                                fontSize: screenWidth * 0.025,
                                weight: FontWeight.bold,
                                clr: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                          child: Center(
                        child: Obx(() => ReusableText(
                            title: feetScreen
                                ? blockController.blockCost.value
                                    .toStringAsFixed(3)
                                : blockController.blockCostMeters.value
                                    .toStringAsFixed(3),
                            fontSize: screenWidth * 0.04,
                            weight: FontWeight.w500,
                            clr: Colors.white)),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.015,
        ),
      ],
    );
  }
}
