import 'package:construction_app/Controllers/Paint%20Controller/paint_controller.dart';
import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../Components/reusable_txt.dart';
import 'package:get/get.dart';

class InputFieldRowPaint extends StatelessWidget {
   InputFieldRowPaint({
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
  final PaintController paintController=Get.put(PaintController());
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
                    textAlign:TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                    initialValue: rowTitle == 'Length'
                        ? ''
                        : rowTitle == 'Height'
                        ? ''
                        : rowTitle == 'Quantity'
                        ? '1':
                    rowTitle=='1 gallon'?'3.785'
                        : '0',
                    onChanged: (value){
                      switch(rowTitle){
                        case 'Length':
                          if(value.isNotEmpty){
                            paintController.getLength(double.tryParse(value));
                          }case 'Height':
                          if(value.isNotEmpty){
                            paintController.getHeight(double.tryParse(value));
                          }case 'Quantity':
                          if(value.isNotEmpty){
                            paintController.getQuantity(double.tryParse(value));
                          }case '1 gallon':
                          if(value.isNotEmpty){
                            paintController.oneGallon(double.tryParse(value));
                          }case '1 gallon price':
                          if(value.isNotEmpty){
                            paintController.getOneGallonPrice(double.tryParse(value));
                          }
                      }
                    },
                    keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                    decoration:  InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Fill',
                      contentPadding: EdgeInsets.only(bottom:screenHeight*0.016),
                      hintStyle: TextStyle(
                        fontSize: screenWidth*0.035,
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
                      width: screenWidth * 0.09,
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
