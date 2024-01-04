import 'package:construction_app/Controllers/Block%20Controller/block_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../Components/reusable_txt.dart';

class InputFieldRowBlocks extends StatelessWidget {
  InputFieldRowBlocks({
    super.key,
    required this.rowTitle,
    required this.unit,
    required this.titleFontSize,
    this.rowWidth,
    this.inputFieldWidth,
    this.wantShortField = false,
    this.removeUnitType = false,
    this.wantTitle = true, required this.unitBoxWidth,
  });
  final String rowTitle;
  final String unit;
  final double titleFontSize;
  final double? rowWidth;
  final double? inputFieldWidth;
  final bool wantShortField;
  final bool removeUnitType;
  final bool wantTitle;

  final double unitBoxWidth;
  final BlockController blockController = Get.put(BlockController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wantShortField ? rowWidth : screenWidth,
      height: screenHeight * 0.05,
      child: Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.025),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
                title: rowTitle,
                fontSize: titleFontSize,
                weight: FontWeight.w500,
                clr: Colors.white),
            Container(
              height: screenHeight * 0.035,
              width: wantShortField ? inputFieldWidth : screenWidth * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff262626),
              ),
              child: Stack(
                children: [
                  TextFormField(

                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                    initialValue: rowTitle == 'Length(L)'
                        ? ''
                        : rowTitle == 'Height(H)'
                            ? ''
                            : rowTitle == 'Thickness\n(T)'
                                ?unit=='inch'? '8':'225'
                                : rowTitle == 'Quantity'
                                    ? '1'
                                    : rowTitle == 'Length'
                                        ? unit == 'inch'
                                            ? '16'
                                            : '450'
                                        : rowTitle == 'Height'
                                            ? unit == 'inch'
                                                ? '8'
                                                : 225.toString()
                                            : rowTitle == 'Width'
                                                ? unit == 'inch'
                                                    ? '8'
                                                    : '225'
                                                : '0',
                    onChanged: (value) {
                      switch (rowTitle) {
                        case 'Length(L)':
                          if (value.isNotEmpty) {
                            blockController
                                .getLengthWallDimension(double.tryParse(value));
                          }
                        case 'Height(H)':
                          if (value.isNotEmpty) {
                            blockController
                                .getHeightWallDimension(double.tryParse(value));
                          }
                        case 'Thickness\n(T)':
                          if (value.isNotEmpty) {
                            blockController.getThicknessWallDimension(
                                double.tryParse(value));
                          }
                        case 'Quantity':
                          if (value.isNotEmpty) {
                            blockController.getQuantityWallDimension(
                                double.tryParse(value));
                          }
                        case 'Length':
                          if (value.isNotEmpty) {
                            blockController.getLengthBlockDimension(
                                double.tryParse(value));
                          }
                        case 'Height':
                          if (value.isNotEmpty) {
                            blockController.getHeightBlockWallDimension(
                                double.tryParse(value));
                          }
                        case 'Width':
                          if (value.isNotEmpty) {
                            blockController.getWidthBlockWallDimension(
                                double.tryParse(value));
                          }
                        case '1 Block\nPrice':
                          if(value.isNotEmpty){
                            blockController.getOneBlockPrice(double.tryParse(value));
                          }
                        case 'Window or\ndoor area':
                          if(value.isNotEmpty){
                            blockController.getWindowOrDoorArea(double.tryParse(value));
                          }
                      }
                    },
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
                  ),
                  removeUnitType
                      ? const Text('')
                      : Positioned(
                          right: 0,
                          child: Container(
                            height: screenHeight * 0.035,
                            width: unitBoxWidth,
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
