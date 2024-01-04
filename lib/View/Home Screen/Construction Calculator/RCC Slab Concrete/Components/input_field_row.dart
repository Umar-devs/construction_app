import 'package:construction_app/Controllers/Rcc%20Concrete%20Controller/rcc_concrete_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Constants/constants.dart';
import '../../../../Components/reusable_txt.dart';

class InputFieldRowRccSlabConcrete extends StatelessWidget {
  InputFieldRowRccSlabConcrete({
    super.key,
    required this.rowTitle,
    required this.unit,
    required this.titleFontSize,
    this.rowWidth,
    this.inputFieldWidth,
    this.wantShortField = false,
    this.removeUnitType = false,
    this.spaceBetweenTitleAndRow = 0,
    this.wantTitle = true,
  });
  final String rowTitle;
  final String unit;
  final double titleFontSize;
  final double? rowWidth;
  final double? inputFieldWidth;
  final bool wantShortField;
  final bool removeUnitType;
  final bool wantTitle;
  final double spaceBetweenTitleAndRow;
  final RccSlabConcreteController rccSlabConcreteController =
      Get.put(RccSlabConcreteController());
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
            SizedBox(width: spaceBetweenTitleAndRow),
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
                            : rowTitle == 'Slab Thick\n(T)'
                                ? unit == 'inch'
                                    ? '6'
                                    : '152.4'
                                : rowTitle == ''
                                    ? unit == 'Cement'
                                        ? '1'
                                        : unit == 'Sand'
                                            ? '2'
                                            : '4'
                                    : rowTitle == 'Dry Volume'
                                        ? '1.54'
                                        : rowTitle == 'Cement Bag'
                                            ? '50'
                                            : rowTitle == 'Long Bar(L)'
                                                ? unit == 'inch'
                                                    ? '6'
                                                    : '125.4'
                                                : rowTitle == 'Short Bar\n(S)'
                                                    ? unit == 'inch'
                                                        ? '4'
                                                        : '101.6'
                                                    : rowTitle ==
                                                            'S Bar Steel\nDia'
                                                        ? ''
                                                        : rowTitle ==
                                                                'L Bar Steel\nDia'
                                                            ? ""
                                                            : rowTitle ==
                                                                    'Single or\nDouble Steel\nNet'
                                                                ? '1'
                                                                : '0',
                    onChanged: (value) {
                      switch (rowTitle) {
                        case 'Length(L)':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getLength(double.tryParse(value));
                          }
                        case 'Width(W)':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getWidth(double.tryParse(value));
                          }
                        case 'Slab Thick\n(T)':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getSlabThick(double.tryParse(value));
                          }
                        case '':
                          if (value.isNotEmpty) {
                            unit == 'Cement'
                                ? rccSlabConcreteController
                                    .getCementRatio(double.tryParse(value))
                                : unit == 'Sand'
                                    ? rccSlabConcreteController
                                        .getSandRatio(value)
                                    : rccSlabConcreteController
                                        .getAggregateRatio(value);
                          }
                        case 'Dry Volume':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getDryVolume(double.tryParse(value));
                          }
                        case 'Cement Bag':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getCementBagWeight(double.tryParse(value));
                          }
                        case 'Long Bar (L)':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getLongBarL(double.tryParse(value));
                          }
                        case 'Short Bar (L)':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getShortBarS(double.tryParse(value));
                          }
                        case 'Steel 1 kg\nPrice':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getSteelOneKgPrice(double.tryParse(value));
                          }
                        case 'S Bar Steel\nDia':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getSBarSteelDia(double.tryParse(value));
                          }
                        case 'L Bar Steel\nDia':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getLBarSteelDia(double.tryParse(value));
                          }
                        case 'Single or\nDouble Steel\nNet':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getSteelNet(double.tryParse(value));
                          }
                        case '1 Cement\nBag':
                          if (value.isNotEmpty) {
                            rccSlabConcreteController
                                .getOneCementBagPrice(double.tryParse(value));
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
                                  title: unit,
                                  fontSize: screenWidth * 0.02,
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
