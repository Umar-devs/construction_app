import 'package:construction_app/Controllers/Tiles%20Controller/tiles_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../Components/reusable_txt.dart';

class InputFieldRowTiles extends StatelessWidget {
  InputFieldRowTiles({
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
    required this.spaceBetweenTitleAndField,
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
  final TilesController tilesController = Get.put(TilesController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPaddingToWholeRow),
      child: SizedBox(
        width: wantShortField ? rowWidth : screenWidth,
        height: screenHeight * 0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
                title: rowTitle,
                fontSize: titleFontSize,
                weight: FontWeight.w500,
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
                      initialValue: rowTitle == 'Length(L)'
                          ? ''
                          : rowTitle == 'Width(W)'
                              ? ''
                              : rowTitle == 'Quantity'
                                  ? '1'
                                  : rowTitle == 'Per 1 Sq.Ft Price'
                                      ? '0'
                                      : rowTitle == 'Per 1 Sq.M Price'
                                          ? '0'
                                          : rowTitle == 'Length'
                                              ? unit == 'Ft'
                                                  ? '0.75'
                                                  : '30.48'
                                              : rowTitle == 'Width'
                                                  ? unit == 'Ft'
                                                      ? '0.75'
                                                      : '30.48'
                                                  : 'm',
                      style: const TextStyle(
                        color: Colors.white70,
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration:  InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Fill',
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
                          case 'Length(L)':
                            if (value.isNotEmpty) {
                              tilesController.getLengthBedDimension(
                                  double.tryParse(value));
                            }
                          case 'Width(W)':
                            if (value.isNotEmpty) {
                              tilesController
                                  .getWidthBedDimension(double.tryParse(value));
                            }
                          case 'Quantity':
                            if (value.isNotEmpty) {
                              tilesController
                                  .getQuantity(double.tryParse(value));
                            }
                          case 'Per 1 Sq.Ft Price':
                            if (value.isNotEmpty) {
                              tilesController
                                  .getSqFtPrice(double.tryParse(value));
                            }
                          case 'Per 1 Sq.M Price':
                            if (value.isNotEmpty) {
                              tilesController
                                  .getSqMPrice(double.tryParse(value));
                            }
                          case 'Length':
                            if (value.isNotEmpty) {
                              tilesController.getLengthTilesDimension(
                                  double.tryParse(value));
                            }
                          case 'Width':
                            if (value.isNotEmpty) {
                              tilesController.getWidthTilesDimension(
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
                            width: screenWidth * 0.08,
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
