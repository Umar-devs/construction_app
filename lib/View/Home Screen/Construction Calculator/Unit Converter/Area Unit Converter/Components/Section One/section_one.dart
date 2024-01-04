import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../../Blocks/Components/top_image_and_text_box.dart';
import '../../../Distance/Components/convert_to_tile.dart';
import '../../../Distance/Components/input_field_row.dart';

class SectionOneAreaConverter extends StatelessWidget {
  const SectionOneAreaConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.025,
        ),
        const TitleBoxWithImageBlocks(
            imgPath: 'assets/images/area unit converter.png',
            title: 'Area Unit Converter'),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        InputFieldRowUnitConverter(
            rowTitle: 'Area(Square)',
            unit: 'sq.M',
            titleFontSize: screenWidth * 0.03),
        const ConvertToTile(),
      ],
    );
  }
}
