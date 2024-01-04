import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Steel/Components/input_field_row.dart';
import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/input_field_row.dart';
import '../../../Tiles/Components/top_image_and_text_box.dart';

class SectionOneSteel extends StatelessWidget {
  const SectionOneSteel({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBoxWithImageTiles(
            imgPath: 'assets/images/Steel feet.png',
            title: 'Dimension of Bathroom Bed\n And Bedroom Bed'),
        Padding(
          padding:  EdgeInsets.only(left: screenWidth*0.03),
          child: InputFieldRowSteel(
            rowTitle: 'Length(L)  ',
            titleFontSize: screenWidth * 0.03,

            unit: feetScreen ? 'Ft' : 'M',
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: screenWidth*0.03),
          child: InputFieldRowBricks(
            rowTitle: 'Dia(d)        ',
            titleFontSize: screenWidth * 0.03,
            leftPaddingToWholeRow: screenWidth * 0.0,
            spaceBetweenTitleAndField: screenWidth * 0.0,
            unit: 'mm', unitBoxSize: 0,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: screenWidth*0.03),
          child: InputFieldRowBricks(
            rowTitle: 'Quantity    ',
            titleFontSize: screenWidth * 0.03,
            leftPaddingToWholeRow: screenWidth * 0.0,
            spaceBetweenTitleAndField: screenWidth * 0.0,
            unit: 'nos', unitBoxSize: 0,
          ),
        ),
      ],
    );
  }
}
