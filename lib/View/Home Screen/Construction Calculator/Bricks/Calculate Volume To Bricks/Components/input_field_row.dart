import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../../Controllers/Bricks Controller/bricks_volume_controller.dart';
import '../../../../../Components/reusable_txt.dart';

class InputFieldRowVolumeBricks extends StatefulWidget {
  const InputFieldRowVolumeBricks({
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
    required this.feetScreen, required this.unitBoxSize,
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
  final bool feetScreen;
  final double unitBoxSize;
  @override
  State<InputFieldRowVolumeBricks> createState() =>
      _InputFieldRowVolumeBricksState();
}

class _InputFieldRowVolumeBricksState extends State<InputFieldRowVolumeBricks> {
  final BrickVolumeController brickVolumeController =
      Get.put(BrickVolumeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: widget.leftPaddingToWholeRow),
      child: SizedBox(
        width: widget.wantShortField ? widget.rowWidth : screenWidth,
        height: screenHeight * 0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
                title: widget.rowTitle,
                fontSize: widget.titleFontSize,
                weight: FontWeight.w500,
                clr: Colors.white),
            SizedBox(
              width: widget.spaceBetweenTitleAndField,
            ),
            Container(
              height: screenHeight * 0.035,
              width: widget.wantShortField
                  ? widget.inputFieldWidth
                  : screenWidth * 0.6,
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
                      initialValue: widget.rowTitle == 'Volume'
                          ? ''
                          : widget.rowTitle == 'Length (L)'
                              ? widget.feetScreen == false
                                  ? '200'
                                  : '9'
                              : widget.rowTitle == 'Width (W)' &&
                                          widget.unit == 'inch' ||
                                      widget.unit == 'mm'
                                  ? widget.unit == 'inch'
                                      ? '4.5'
                                      : 100.toString()
                                  : widget.rowTitle == 'Thick'
                                      ? widget.unit == 'inch'
                                          ? '3'
                                          : 100.toString()
                                      : widget.rowTitle == '1 Brick Price'
                                          ? '0'
                                          : widget.rowTitle == '1 cement\n  bag'
                                              ? '50'
                                              : widget.rowTitle ==
                                                      'Quantity\n(nos)'
                                                  ? '1'
                                                  : widget.rowTitle ==
                                                                  'Mortar Ratio' &&
                                                              widget.unit ==
                                                                  'cement' ||
                                                          widget.unit == 'sand'
                                                      ? widget.unit == 'cement'
                                                          ? '1'
                                                          : '5'
                                                      : '0',
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
                        switch (widget.rowTitle) {
                          case 'Volume':
                            if (value.isNotEmpty) {
                              brickVolumeController
                                  .getVolume(double.tryParse(value));
                            }
                          case 'Thick':
                            if (value.isNotEmpty) {
                              brickVolumeController
                                  .getThick(double.tryParse(value));
                            }
                          case 'Length (L)':
                            if (value.isNotEmpty) {
                              brickVolumeController
                                  .getLength(double.tryParse(value));
                            }
                          case 'Width (W)':
                            if (value.isNotEmpty) {
                              brickVolumeController
                                  .getWidth(double.tryParse(value));
                            }
                          case '1 Brick Price':
                            if (value.isNotEmpty) {
                              brickVolumeController
                                  .getOneBrickPrice(double.tryParse(value));
                            }
                          case 'Mortar\nRatio':
                            if (widget.unit == 'cement') {
                              if (value.isNotEmpty) {
                                brickVolumeController.getMortarRatioCement(
                                    double.tryParse(value));
                              }
                            }
                            if (widget.unit == 'sand') {
                              if (value.isNotEmpty) {
                                brickVolumeController
                                    .getMortarRatioSand(double.tryParse(value));
                              }
                            }
                          case '1 cement\n  bag':
                            if (value.isNotEmpty) {
                              brickVolumeController.getOneCementBagWeight(
                                  double.tryParse(value));
                            }
                          case '1 cement bag price':
                            if (value.isNotEmpty) {
                              brickVolumeController
                                  .getOneCementBag(double.tryParse(value));
                            }
                          case '1 cement\nbag price':
                            if (value.isNotEmpty) {
                              brickVolumeController
                                  .getOneCementBag(double.tryParse(value));
                            }
                          case 'Quantity\n(nos)':
                            if (value.isNotEmpty) {
                              brickVolumeController.getNumberOfBags(double.tryParse(value));
                            }
                        }
                      },
                    ),
                  ),
                  widget.removeInputFieldType
                      ? const Text(
                          '',
                          style: TextStyle(fontSize: 0),
                        )
                      : Positioned(
                          right: 0,
                          child: Container(
                            height: screenHeight * 0.035,
                            width:widget.unitBoxSize,
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
                                  title: widget.unit,
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
