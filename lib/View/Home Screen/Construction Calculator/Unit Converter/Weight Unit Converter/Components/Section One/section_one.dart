import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../../Blocks/Components/top_image_and_text_box.dart';
import '../../../Area Unit Converter/Components/convert_to_tile.dart';
import '../../../Area Unit Converter/Components/input_field_row.dart';

class SectionOneWeight extends StatelessWidget {
  const SectionOneWeight({super.key,});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.025,
        ),
        const TitleBoxWithImageBlocks(
            imgPath: 'assets/images/Weight unit converter.png',
            title: 'Weight Unit Converter'),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        InputFieldRowUnitConverter(
            rowTitle: 'Weight(Mass)',
            unit: 'Kg',
            titleFontSize: screenWidth * 0.03),
       const ConvertToTile(),
      ],
    );
  }
}
