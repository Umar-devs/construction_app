import 'package:construction_app/Controllers/Concrete%20Controller/round_concrete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';

class InputFieldRowRoundConcrete extends StatelessWidget {
  InputFieldRowRoundConcrete({
    super.key,
    required this.rowTitle,
    required this.unit,
    required this.titleFontSize,
    this.rowWidth,
    this.inputFieldWidth,
    this.wantShortField = false,
    this.removeUnitType = false,
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
  final RoundConcreteController roundConcreteController =
  Get.put(RoundConcreteController());
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
                        ? '1'
                        : rowTitle == 'Sand'
                        ? '2'
                        : rowTitle == 'Aggregate'
                        ? '4':
                     rowTitle=='Diameter (d)'?''
                        : rowTitle == 'Height (h)'
                        ? ''
                        : rowTitle == '1 Cement\nbag Price'
                        ? '0'
                        : rowTitle == 'Dry\nVolume'
                        ? '1.54'
                        : rowTitle ==
                        '1 Cement\nBag'
                        ? '50'
                        : rowTitle ==
                        'Quantity\n(nos)'
                        ? '1'
                        : '0',
                    onChanged: (value) {
                      switch (rowTitle) {
                        case 'Cement':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getCement(double.tryParse(value));
                          }
                        case 'Sand':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getSand(double.tryParse(value));
                          }
                        case 'Aggregate':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getAggregate(double.tryParse(value));
                          }
                        case 'Diameter (d)':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getDia(double.tryParse(value));
                          }
                        case 'Height (h)':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getHeight(double.tryParse(value));
                          }
                        case '1 Cement\nbag Price':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getOneCementBagPrice(double.tryParse(value));
                          }
                        case 'Dry\nVolume':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getDryVolume(double.tryParse(value));
                          }
                        case '1 Cement\nBag':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getCement(double.tryParse(value));
                          }
                        case 'Quantity\n(nos)':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getQuantity(double.tryParse(value));
                          }
                        case '1 CFT Concrete Price':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getConcretePrice(double.tryParse(value));
                          }
                        case '1 m3 Concrete Price':
                          if (value.isNotEmpty) {
                            roundConcreteController
                                .getConcretePrice(double.tryParse(value));
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
                      width: screenWidth * 0.06,
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
