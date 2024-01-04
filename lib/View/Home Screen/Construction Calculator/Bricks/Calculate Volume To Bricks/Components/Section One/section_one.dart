import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Volume%20To%20Bricks/Components/input_field_row.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';

class SectionOneBricksVolume extends StatelessWidget {
  const SectionOneBricksVolume({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.005,
        ),
        ReusableText(
            title: 'Dimension of Wall',
            fontSize: screenWidth * 0.045,
            weight: FontWeight.w600,
            clr: Colors.white),
        const SizedBox(height: 10,),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05, right: screenWidth * 0.03),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/calculate bricks wall.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            InputFieldRowVolumeBricks(
              rowTitle: 'Volume',
              unit: feetScreen ? 'CFt' : 'm3',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.3,
              leftPaddingToWholeRow: screenWidth * 0.05,
              spaceBetweenTitleAndField: screenWidth * 0.05,
              feetScreen: feetScreen, unitBoxSize: screenWidth*0.065,
            ),
          ],
        ),
      ],
    );
  }
}
