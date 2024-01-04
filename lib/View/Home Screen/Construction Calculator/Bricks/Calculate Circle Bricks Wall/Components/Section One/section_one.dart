import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Circle%20Bricks%20Wall/Components/input_field_row.dart';
import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';

class SectionOneCircularWall extends StatelessWidget {
  const SectionOneCircularWall({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.005,
        ),
        ReusableText(
            title: 'Dimension of circular Wall',
            fontSize: screenWidth * 0.045,
            weight: FontWeight.w600,
            clr: Colors.white),
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
                    'assets/images/calculate circle bricks wall.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                InputFieldRowCircleBricks(
                  rowTitle: 'Dia (D)',
                  unit: feetScreen ? 'Ft' : 'M',
                  titleFontSize: screenWidth * 0.035,
                  wantShortField: true,
                  rowWidth: screenWidth * 0.5,
                  inputFieldWidth: screenWidth * 0.3,
                  leftPaddingToWholeRow: 5,
                  spaceBetweenTitleAndField: 0,
                  feetScreen: feetScreen, unitBoxSize: screenWidth*0.06,
                ),
                InputFieldRowCircleBricks(
                  rowTitle: 'Height (H)',
                  unit: feetScreen ? 'Ft' : 'M',
                  titleFontSize: screenWidth * 0.035,
                  wantShortField: true,
                  rowWidth: screenWidth * 0.5,
                  inputFieldWidth: screenWidth * 0.3,
                  leftPaddingToWholeRow: 5,
                  spaceBetweenTitleAndField: 0,
                  feetScreen: feetScreen, unitBoxSize:  screenWidth*0.06,
                ),
                InputFieldRowCircleBricks(
                  rowTitle: 'Thick (T)',
                  unit: feetScreen ? 'inch' : 'mm',
                  titleFontSize: screenWidth * 0.035,
                  wantShortField: true,
                  rowWidth: screenWidth * 0.5,
                  inputFieldWidth: screenWidth * 0.3,
                  leftPaddingToWholeRow: 5,
                  spaceBetweenTitleAndField: 0,
                  feetScreen: feetScreen, unitBoxSize:  screenWidth*0.08,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
