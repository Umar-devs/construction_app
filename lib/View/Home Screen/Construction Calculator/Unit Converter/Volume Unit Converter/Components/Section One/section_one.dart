import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../../Blocks/Components/top_image_and_text_box.dart';
import '../../../Area Unit Converter/Components/convert_to_tile.dart';
import '../../../Area Unit Converter/Components/input_field_row.dart';

class SectionOneVolume extends StatelessWidget {
  const SectionOneVolume({super.key,});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.025,
        ),
        const TitleBoxWithImageBlocks(
            imgPath: 'assets/images/volume unit converter.png',
            title: 'Volume Unit Converter'),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        InputFieldRowUnitConverter(
            rowTitle: 'Volume(Cube)',
            unit: 'CU.M',
            titleFontSize: screenWidth * 0.03),
       const ConvertToTile(),
      ],
    );
  }
}
