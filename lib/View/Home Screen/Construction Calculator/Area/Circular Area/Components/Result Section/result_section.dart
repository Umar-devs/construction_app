
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Blocks/Components/input_field_row.dart';
import 'Components/results_title.dart';

class ResultSectionCircularArea extends StatelessWidget {
  const ResultSectionCircularArea({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        InputFieldRowBlocks(
            rowTitle: 'Area',
            unit: feetScreen?'sq.Ft':'sq.M',
            titleFontSize: screenWidth * 0.035),
      ],
    );
  }
}
