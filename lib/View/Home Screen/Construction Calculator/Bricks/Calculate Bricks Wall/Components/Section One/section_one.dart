import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';
import '../input_field_row.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key, required this.feetScreen});
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
            Column(
              children: [
                InputFieldRowBricks(
                  rowTitle: 'Length (L)',
                  unit: feetScreen ? 'Ft' : 'M',
                  titleFontSize: screenWidth * 0.035,
                  wantShortField: true,
                  rowWidth: screenWidth * 0.5,
                  inputFieldWidth: screenWidth * 0.25,
                  leftPaddingToWholeRow: screenWidth * 0.05,
                  spaceBetweenTitleAndField: screenWidth * 0.05,
                  unitBoxSize: screenWidth * 0.06,
                ),
                InputFieldRowBricks(
                    rowTitle: 'Height (H)',
                    unit: feetScreen ? 'Ft' : 'M',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    leftPaddingToWholeRow: screenWidth * 0.05,
                    spaceBetweenTitleAndField: screenWidth * 0.05,
                    unitBoxSize: screenWidth * 0.06),
                InputFieldRowBricks(
                    rowTitle: 'Thick (T)',
                    unit: feetScreen ? 'Inch' : 'MM',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    spaceBetweenTitleAndField: screenWidth * 0.07,
                    leftPaddingToWholeRow: screenWidth * 0.05,
                    unitBoxSize: screenWidth * 0.08),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
