import 'package:construction_app/Controllers/Plaster%20Controller/plaster_controller.dart';
import 'package:construction_app/Utils/utils.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field.dart';

class SectionTwoPlaster extends StatelessWidget {
  SectionTwoPlaster({super.key, required this.feetScreen});
  final bool feetScreen;
  final PlasterController plasterController = Get.put(PlasterController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        ReusableText(
            title: 'Dimension of wall',
            fontSize: screenWidth * 0.04,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowPlaster(
                rowTitle: 'Length(L)',
                unit: feetScreen ? 'Ft' : 'M',
                wantShortField: true,
                rowWidth: screenWidth * 0.48,
                inputFieldWidth: screenWidth * 0.22,
                titleFontSize: screenWidth * 0.035, unitBoxWidth: screenWidth * 0.06,),
            InputFieldRowPlaster(
                rowTitle: 'Height(H)',
                unit: feetScreen ? 'Ft' : 'M',
                rowWidth: screenWidth * 0.48,
                wantShortField: true,
                inputFieldWidth: screenWidth * 0.22,
                titleFontSize: screenWidth * 0.035, unitBoxWidth: screenWidth * 0.06,),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.02),
          child: InputFieldRowPlaster(
              rowTitle: 'Thickness(T)',
              wantShortField: true,
              rowWidth: screenWidth,
              inputFieldWidth: screenWidth * 0.6,
              unit:feetScreen?'inch': 'mm',
              titleFontSize: screenWidth * 0.035, unitBoxWidth: screenWidth * 0.085,),
        ),
        Row(
          children: [
            InputFieldRowPlaster(
              rowTitle: '1 Cement Bag\nPrice',
              unit: '',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.15,
              rowWidth: screenWidth * 0.48,
              removeUnitType: true, unitBoxWidth: 0,
            ),
            InputFieldRowPlaster(
              rowTitle: 'Dry \nVolume',
              unit: '',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.2,
              rowWidth: screenWidth * 0.48,
              removeUnitType: true, unitBoxWidth: 0,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowPlaster(
              rowTitle: '1 Cement Bag',
              unit: 'kg',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.15,
              rowWidth: screenWidth * 0.48, unitBoxWidth: screenWidth * 0.055,
            ),
            InputFieldRowPlaster(
              rowTitle: 'Quantity\n(nos)',
              unit: 'kg',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.2,
              rowWidth: screenWidth * 0.48,
              removeUnitType: true, unitBoxWidth: 0,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.02),
          child: InputFieldRowPlaster(
              rowTitle:
                  feetScreen ? '1 Sq.Ft Plaster Price' : '1 Sq.M Plaster Price',
              unit: 'Price',
              wantShortField: true,
              rowWidth: screenWidth,
              inputFieldWidth: screenWidth*0.5,
              titleFontSize: screenWidth * 0.035, unitBoxWidth: screenWidth * 0.09,),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        CalculateBtn(
          onTap: () {
            if (plasterController.length.value == 0.0 ||
                plasterController.height.value == 0.0) {
              Utils().toastMessage('Some details are empty');
            } else if (feetScreen == true) {
              plasterController.calculationsForFeetScreen();
            } else {
              plasterController.calculationsForMetersScreen();
            }
          },
        ),
      ],
    );
  }
}
