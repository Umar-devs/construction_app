import 'package:construction_app/Controllers/Concrete%20Controller/round_concrete.dart';
import 'package:construction_app/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';
import '../../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';

class SectionTwoRoundConcrete extends StatelessWidget {
  SectionTwoRoundConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  final RoundConcreteController roundConcreteController =
      Get.put(RoundConcreteController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
          child: ReusableText(
              title: 'Dimension of Round Concrete',
              fontSize: screenWidth * 0.04,
              weight: FontWeight.w500,
              clr: Colors.white70),
        ),
        Row(
          children: [
            InputFieldRowRoundConcrete(
              rowTitle: 'Diameter (d)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.035,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.6,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowRoundConcrete(
              rowTitle: 'Height (h)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.035,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.6,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowRoundConcrete(
              rowTitle: '1 Cement\nbag Price',
              unit: 'Kg',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
              removeUnitType: true,
            ),
            InputFieldRowRoundConcrete(
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
            InputFieldRowRoundConcrete(
              rowTitle: '1 Cement\nBag',
              unit: 'Kg',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
            InputFieldRowRoundConcrete(
              rowTitle: 'Quantity\n(nos)',
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
            InputFieldRowRoundConcrete(
              rowTitle:
                  feetScreen ? '1 CFT Concrete Price' : '1 m3 Concrete Price',
              unit: '',
              titleFontSize: screenWidth * 0.035,
              rowWidth: screenWidth ,
              inputFieldWidth: screenWidth * 0.55,
              wantShortField: true,
              removeUnitType: true,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        CalculateBtn(
          onTap: () {
            if(roundConcreteController.diameter.value==0.0||roundConcreteController.height.value==0.0){
              Utils().toastMessage('Some details are empty');
            }
            else{
              feetScreen
                  ? roundConcreteController.calculateRoundFeetValues()
                  : roundConcreteController.calculateRoundMetersValues();
            }

          },
        ),
      ],
    );
  }
}
