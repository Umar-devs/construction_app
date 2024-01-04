import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Paint%20Controller/paint_controller.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Paint/Components/result_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultSectionPaint extends StatelessWidget {
  ResultSectionPaint({super.key, required this.feetScreen});
  final bool feetScreen;
  final PaintController paintController = Get.put(PaintController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ReusableText(
                    alignTxt: TextAlign.start,
                    title: 'Dry wall (new wall) Results',
                    fontSize: screenWidth * 0.035,
                    weight: FontWeight.w700,
                    clr: Colors.white70),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() =>resultRow(feetScreen,
                    'Total Paint Area = ',
                    paintController.totalArea.value.toStringAsFixed(3),feetScreen? 'Sq.Ft':'Sq.M'),),
                Obx(() => resultRow(
                  feetScreen,
                  'Total Required Paint = ',
                  paintController.totalRequiredPaintGallonsDryWall.value
                      .toStringAsFixed(3),'Gallon',)),
                Obx(() => resultRow(
                    feetScreen,
                    'Total Required Paint = ',
                    paintController.totalRequiredPaintLittersDryWall.value
                        .toStringAsFixed(3),'Litter')),
                Obx(() => resultRow(
                    feetScreen,
                    'Total Paint Price = ',
                    paintController.totalPaintPriceDryWall.value
                        .toStringAsFixed(3),'Amount')),
              ],
            )
          ],
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ReusableText(
                    alignTxt: TextAlign.start,
                    title: 'Wet wall (old wall) Results',
                    fontSize: screenWidth * 0.035,
                    weight: FontWeight.w700,
                    clr: Colors.white70),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() => resultRow(feetScreen, 'Total Paint Area = ',
                    paintController.totalArea.value.toStringAsFixed(3),feetScreen?'Sq.Ft':'Sq.M')),
                Obx(() => resultRow(
                    feetScreen,
                    'Total Required Paint = ',
                    paintController.totalRequiredPaintGallonsWetWall.value
                        .toStringAsFixed(3),'Gallon')),
                Obx(() => resultRow(
                    feetScreen,
                    'Total Required Paint = ',
                    paintController.totalRequiredPaintLittersWetWall.value
                        .toStringAsFixed(3),'Litter')),
                Obx(() => resultRow(
                    feetScreen,
                    'Total Paint Price = ',
                    paintController.totalPaintPriceWetWall.value
                        .toStringAsFixed(3),'Amount')),
              ],
            )
          ],
        ),
        SizedBox(
          height: screenHeight * 0.1,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
      ],
    );
  }
}
