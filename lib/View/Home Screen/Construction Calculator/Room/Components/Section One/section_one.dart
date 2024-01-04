import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/top_image_and_text_box.dart';
import '../../../Plaster/Components/input_field.dart';

class SectionOneRoom extends StatelessWidget {
  const SectionOneRoom({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const TitleBoxWithImage(
            imgPath: 'assets/images/calculate bricks wall.jpg', title: 'Mortar Ratio',),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowPlaster(
              rowTitle: 'Cement     ',
              unit: '',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.25,
              removeUnitType: true, unitBoxWidth: 1,
            ),
            InputFieldRowPlaster(
              rowTitle: 'Sand     ',
              unit: '',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.25,
              removeUnitType: true,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        const CustomDivider(),
      ],
    );
  }
}
