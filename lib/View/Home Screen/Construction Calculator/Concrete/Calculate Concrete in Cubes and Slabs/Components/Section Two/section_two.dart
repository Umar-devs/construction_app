import 'package:construction_app/Controllers/Concrete%20Controller/flat_concrete_controller.dart';
import 'package:construction_app/Controllers/btn_effect_controller.dart';
import 'package:construction_app/Utils/utils.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';
import '../../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';
import 'package:get/get.dart';

class SectionTwoConcrete extends StatelessWidget {
  SectionTwoConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  final FlatConcreteController flatConcreteController =
      Get.put(FlatConcreteController());
  final ButtonEffectController buttonEffectController=Get.put(ButtonEffectController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
          child: ReusableText(
              title: 'Dimension of Slab, Cube Concrete',
              fontSize: screenWidth * 0.04,
              weight: FontWeight.w500,
              clr: Colors.white70),
        ),
        Row(
          children: [
            InputFieldRowConcrete(
              rowTitle: 'Length(L)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.28,
              contentPaddingRight: screenWidth*0.06,
            ),
            InputFieldRowConcrete(
              rowTitle: 'Width(b)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.3, contentPaddingRight: screenWidth*0.06
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowConcrete(
              rowTitle: 'Height(h)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.035,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.6, contentPaddingRight: screenWidth*0.03
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowConcrete(
              rowTitle: '1 Cement\nbag Price',
              unit: 'Kg',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.28,
              removeUnitType: true,
            ),
            InputFieldRowConcrete(
              rowTitle: 'Dry\nVolume',
              unit: 'mm',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.3,
              removeUnitType: true,
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            InputFieldRowConcrete(
              rowTitle: '1 Cement\nBag',
              unit: 'Kg',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.28, contentPaddingRight: screenWidth*0.06
            ),
            InputFieldRowConcrete(
              rowTitle: 'Quantity(nos)',
              unit: 'mm',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.2,
              removeUnitType: true,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowConcrete(
              rowTitle:
                  feetScreen ? '1 CFT Concrete Price' : '1 m3 Concrete Price',
              unit: '',
              titleFontSize: screenWidth * 0.032,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.6,
              removeUnitType: true,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        CalculateBtn(
          onTap: () {
            buttonEffectController.isTapped.value=true;
            if (flatConcreteController.length.value == 0.0 ||
                flatConcreteController.width.value == 0.0 ||
                flatConcreteController.height.value == 0.0) {
              Utils().toastMessage('Some details are empty');
            } else {
              feetScreen
                  ? flatConcreteController.flatConcreteFeetCalculations()
                  : flatConcreteController.flatConcreteMetersCalculations();
            }
          },
        ),
      ],
    );
  }
}
