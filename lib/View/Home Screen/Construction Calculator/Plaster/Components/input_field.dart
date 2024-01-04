import 'package:construction_app/Controllers/Plaster%20Controller/plaster_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../Components/reusable_txt.dart';

class InputFieldRowPlaster extends StatelessWidget {
  InputFieldRowPlaster({
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
  final PlasterController plasterController = Get.put(PlasterController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wantShortField ? rowWidth : screenWidth,
      height: screenHeight * 0.05,
      child: Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.05),
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
                    initialValue: rowTitle == 'Cement'
                        ? ' 1'
                        : rowTitle == 'Sand'
                            ? ' 4'
                            : rowTitle == 'Length(L)'
                                ? ''
                                : rowTitle == 'Height(H)'
                                    ? ''
                                    : rowTitle == 'Thickness(T)'
                                        ?unit=='inch'? ' 0.5':' 12'
                                        : rowTitle == 'Dry \nVolume'
                                            ? ' 1.27'
                                            : rowTitle == '1 Cement Bag'
                                                ? ' 50'
                                                : rowTitle == 'Quantity\n(nos)'
                                                    ? ' 1'
                                                    : ' 0',
                    onChanged: (value) {
                      switch (rowTitle) {
                        case 'Cement':
                          if (value.isNotEmpty) {
                            plasterController.getCement(double.tryParse(value));
                          }
                        case 'Sand':
                          if (value.isNotEmpty) {
                            plasterController.getSand(double.tryParse(value));
                          }
                        case 'Length(L)':
                          if (value.isNotEmpty) {
                            plasterController.getLength(double.tryParse(value));
                          }
                        case 'Height(H)':
                          if (value.isNotEmpty) {
                            plasterController.getHeight(double.tryParse(value));
                          }
                        case 'Thickness(T)':
                          if (value.isNotEmpty) {
                            plasterController.getCement(double.tryParse(value));
                          }
                        case '1 Cement Bag\nPrice':
                          if (value.isNotEmpty) {
                            plasterController
                                .getOneCementBagPrice(double.tryParse(value));
                          }
                        case 'Dry \nVolume':
                          if (value.isNotEmpty) {
                            plasterController
                                .getDryVolume(double.tryParse(value));
                          }
                        case '1 Cement Bag':
                          if (value.isNotEmpty) {
                            plasterController
                                .getOneCementBagWeight(double.tryParse(value));
                          }
                        case 'Quantity\n(nos)':
                          if (value.isNotEmpty) {
                            plasterController
                                .getQuantity(double.tryParse(value));
                          }
                        case '1 Sq.Ft Plaster Price':
                          if (value.isNotEmpty) {
                            plasterController
                                .getPlasterPrice(double.tryParse(value));
                          }
                        case '1 Sq.M Plaster Price':
                          if (value.isNotEmpty) {
                            plasterController
                                .getPlasterPrice(double.tryParse(value));
                          }
                      }
                    },
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
