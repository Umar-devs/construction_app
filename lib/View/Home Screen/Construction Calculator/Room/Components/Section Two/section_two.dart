import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../../../Plaster/Components/input_field.dart';

class SectionTwoRoom extends StatelessWidget {
  const SectionTwoRoom({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          children: [
            InputFieldRowPlaster(
                rowTitle: 'Length(L)     ',
                unit: feetScreen ? 'Ft' : 'M',
                wantShortField: true,
                inputFieldWidth: screenWidth * 0.25,
                titleFontSize: screenWidth * 0.03),
            InputFieldRowPlaster(
                rowTitle: 'Height(H)     ',
                unit: feetScreen ? 'Ft' : 'M',
                wantShortField: true,
                inputFieldWidth: screenWidth * 0.25,
                titleFontSize: screenWidth * 0.03),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.03),
          child: InputFieldRowPlaster(
              rowTitle: 'Thickness(T)',
              unit: 'mm',
              titleFontSize: screenWidth * 0.035),
        ),
        Row(
          children: [
            InputFieldRowPlaster(
              rowTitle: '1 Cement Bag   \nPrice  ',
              unit: '',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.15,
              removeUnitType: true,
            ),
            InputFieldRowPlaster(
              rowTitle: 'Dry \nVolume  ',
              unit: '',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.3,
              removeUnitType: true,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowPlaster(
              rowTitle: '1 Cement Bag    ',
              unit: 'kg',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.27,
            ),
            InputFieldRowPlaster(
              rowTitle: 'Quantity     \n(nos)  ',
              unit: 'kg',
              titleFontSize: screenWidth * 0.03,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.15,
              removeUnitType: true,
            ),
          ],
        ),
        Padding(
          padding:  EdgeInsets.only(right: screenWidth*0.033),
          child: InputFieldRowPlaster(
              rowTitle: '1 Sq.M Plaster Price',
              unit: 'Price',
              titleFontSize: screenWidth * 0.03),
        ),
        SizedBox(height: screenHeight*0.03,),
        const CalculateBtn(),
      ],
    );
  }
}
