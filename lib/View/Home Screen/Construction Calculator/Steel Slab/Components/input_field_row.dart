import 'package:construction_app/Controllers/Slab%20Steel%20Controller/slab_steel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../Components/reusable_txt.dart';

class InputFieldRowSlabSteel extends StatelessWidget {
  InputFieldRowSlabSteel({
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
  final SlabSteelController slabSteelController = Get.put(SlabSteelController());
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
                    initialValue: rowTitle == 'Length(L)'
                        ? ''
                        : rowTitle == 'Width(W)'
                            ? ''
                            : rowTitle == 'Steel(Dia)'
                                ? ''
                                : rowTitle == 'Long Bar(L)'
                                    ? unit == 'inch'
                                        ? '4'
                                        : '100'
                                    : rowTitle == 'Short Bar(a)'
                                        ? unit == 'inch'
                                            ? '6'
                                            : '150'
                                        : rowTitle == 'Quantity'
                                            ? '1'
                                            : '0',
                    onChanged: (value) {
                      switch (rowTitle) {
                        case 'Length(L)':
                          if (value.isNotEmpty) {
                            slabSteelController
                                .getLength(double.tryParse(value));
                          }
                        case 'Width(W)':
                          if (value.isNotEmpty) {
                            slabSteelController
                                .getWidth(double.tryParse(value));
                          }
                        case 'Steel(Dia)':
                          if (value.isNotEmpty) {
                            slabSteelController.getDiameter(
                                double.tryParse(value));
                          }
                        case 'Quantity':
                          if (value.isNotEmpty) {
                            slabSteelController.getQuantity(
                                double.tryParse(value));
                          }
                        case 'Long Bar(L)':
                          if (value.isNotEmpty) {
                            slabSteelController.getLongBar(
                                double.tryParse(value));
                          }
                        case 'Short Bar(a)':
                          if (value.isNotEmpty) {
                            slabSteelController.getShortBar(
                                double.tryParse(value));
                          }
                        case 'Steel 1 kg\nPrice':
                          if (value.isNotEmpty) {
                            slabSteelController.getOneKgPrice(
                                double.tryParse(value));
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
