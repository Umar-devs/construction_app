import 'package:construction_app/Controllers/Bricks%20Controller/bricks_wall_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';

class InputFieldRowBricks extends StatelessWidget {
  InputFieldRowBricks({
    super.key,
    required this.rowTitle,
    required this.unit,
    required this.titleFontSize,
    this.rowWidth,
    this.inputFieldWidth,
    this.wantShortField = false,
    this.removeInputFieldType = false,
    this.wantTitle = true,
    required this.leftPaddingToWholeRow,
    required this.spaceBetweenTitleAndField, required this.unitBoxSize,  this.mainAxisAlignment=MainAxisAlignment.spaceBetween,
  });
  final String rowTitle;
  final String unit;
  final double titleFontSize;
  final double? rowWidth;
  final double? inputFieldWidth;
  final bool wantShortField;
  final bool removeInputFieldType;
  final bool wantTitle;
  final double leftPaddingToWholeRow;
  final double spaceBetweenTitleAndField;
  final double unitBoxSize;
  final MainAxisAlignment mainAxisAlignment;
  final BricksController bricksController = Get.put(BricksController());
  final List initialValue = [
    '',
    '',
    '9',
    '0',
    '9',
    '4.5',
    '3',
    '0',
    '50',
    '1',
    '1',
    '5',
    '0',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPaddingToWholeRow),
      child: SizedBox(
        width: wantShortField ? rowWidth : screenWidth,
        height: screenHeight * 0.05,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            ReusableText(
                title: rowTitle,
                fontSize: titleFontSize,
                weight: FontWeight.w500,
                alignTxt: TextAlign.start,
                clr: Colors.white),
            SizedBox(
              width: spaceBetweenTitleAndField,
            ),
            Container(
              height: screenHeight * 0.035,
              width: wantShortField ? inputFieldWidth : screenWidth * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff262626),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      initialValue: rowTitle == 'Length (L)' && unit == 'Ft' ||
                              unit == 'M'
                          ? initialValue[0]
                          : rowTitle == 'Height (H)'
                              ? initialValue[1]
                              : rowTitle == 'Thick (T)' && unit == 'MM' ||
                                      unit == 'Inch'
                                  ? unit == 'MM'
                                      ? 90.toString()
                                      : initialValue[2]
                                  : rowTitle == 'Subtract Window\nor Door Area'
                                      ? initialValue[3]
                                      : rowTitle == 'Length (L)'
                                          ? unit == 'mm'
                                              ? 200.toString()
                                              : initialValue[4]
                                          : rowTitle == 'Width (W)'
                                              ? unit == 'mm'
                                                  ? 100.toString()
                                                  : initialValue[5]
                                              : rowTitle == 'Thick (T)' &&
                                                          unit == 'mm' ||
                                                      unit == 'inch'
                                                  ? unit == 'inch'
                                                      ? '3'
                                                      : '100'
                                                  : rowTitle == '1 Brick Price'
                                                      ? 0.toString()
                                                      : rowTitle ==
                                                              '1 cement\nbag'
                                                          ? initialValue[8]
                                                          : rowTitle ==
                                                                  'Quantity\n(nos)'
                                                              ? 1.toString()
                                                              : rowTitle ==
                                                                          'Mortar Ratio' &&
                                                                      unit ==
                                                                          'cement'
                                                                  ? initialValue[
                                                                      10]
                                                                  : rowTitle ==
                                                                              '' &&
                                                                          unit ==
                                                                              'sand'
                                                                      ? 5.toString()
                                                                      :rowTitle=='1 cement bag price'?"0": initialValue[
                                                                          12],
                      style: const TextStyle(
                        color: Colors.white70,
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration:  InputDecoration(
                        border: InputBorder.none,hintText: 'Fill',
                          contentPadding: const EdgeInsets.only(
                            bottom: 13,
                          ),
                          hintStyle: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w600,
                            color: Colors.white30,
                          )
                      ),
                      onChanged: (value) {
                        switch (rowTitle) {
                          case 'Length (L)':
                            if (unit == 'Ft' || unit == 'M') {
                              if (value.isNotEmpty) {
                                bricksController.getLengthWallDimension(
                                    double.tryParse(value));
                              }
                            }
                           else if (unit == 'inch') {
                              if (value.isNotEmpty) {
                                bricksController.getLengthInBrickDimensionFeet(
                                    double.tryParse(value));
                              }
                            }
                            if (unit == 'mm') {
                              if (value.isNotEmpty) {
                                bricksController
                                    .getLengthInBrickDimensionMeters(
                                        double.tryParse(value));
                              }
                            }
                          case 'Height (H)':
                            if (value.isNotEmpty) {
                              bricksController
                                  .getHeight(double.tryParse(value));
                            }
                          case 'Thick (T)':
                            if (unit == 'inch') {
                              if (value.isNotEmpty) {
                                bricksController
                                    .getThicknessInBrickDimensionFeet(
                                        double.tryParse(value));
                              }
                            }
                            if (unit == 'Inch') {
                              if (value.isNotEmpty) {
                                bricksController
                                    .getThicknessFeet(double.tryParse(value));
                              }
                            }
                            if (unit == 'MM') {
                              if (value.isNotEmpty) {
                                bricksController
                                    .getThicknessMeters(double.tryParse(value));
                              }
                            }
                            if (unit == 'mm') {
                              if (value.isNotEmpty) {
                                bricksController
                                    .getThicknessInBrickDimensionMeters(
                                        double.tryParse(value));
                              }
                            }

                          case 'Subtract Window\nor Door Area':
                            if (value.isNotEmpty) {
                              bricksController
                                  .getDoorArea(double.tryParse(value));
                            }
                          case 'Width (W)':
                            if (unit == 'inch') {
                              if (value.isNotEmpty) {
                                bricksController.getWidthInBrickDimensionFeet(
                                    double.tryParse(value));
                              }
                            }
                            if (unit == 'mm') {
                              if (value.isNotEmpty) {
                                bricksController.getWidthInBrickDimensionMeters(
                                    double.tryParse(value));
                              }
                            }
                          case '1 Brick Price':
                            if (value.isNotEmpty) {
                              bricksController
                                  .getOneBrickPrice(double.tryParse(value));
                            }
                          case '1 cement\n  bag':
                            if (value.isNotEmpty) {
                              bricksController
                                  .getWeightOfCementBag(double.tryParse(value));
                            }
                          case 'Quantity\n(nos)':
                            if (value.isNotEmpty) {
                              bricksController.getQuantityInBrickDimension(
                                  double.tryParse(value));
                            }
                          case 'Mortar\nRatio':
                            if (unit == 'cement') {
                              if (value.isNotEmpty) {
                                bricksController.getMortarRatioCement(
                                    double.tryParse(value));
                              }
                            }
                            if (unit == 'sand') {
                              if (value.isNotEmpty) {
                                bricksController
                                    .getMortarRatioSand(double.tryParse(value));
                              }
                            }
                          case '1 cement bag price':
                            if (value.isNotEmpty) {
                              bricksController.getOneCementBagPriceFeet(
                                  double.tryParse(value));
                            }
                          case '1 cement\nbag price':
                            if (value.isNotEmpty) {
                              bricksController.getOneCementBagPriceMeters(
                                  double.tryParse(value));
                            }
                        }
                      },
                    ),
                  ),
                  removeInputFieldType
                      ? const Text(
                          '',
                          style: TextStyle(fontSize: 0),
                        )
                      : Positioned(
                          right: 0,
                          child: Container(
                            height: screenHeight * 0.035,
                            width:unitBoxSize,
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
                                  title: unit,
                                  fontSize: screenWidth * 0.025,
                                  weight: FontWeight.bold,
                                  clr: Colors.white),
                            ),
                          ),
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
