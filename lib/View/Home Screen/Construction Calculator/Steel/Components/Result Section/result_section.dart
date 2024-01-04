import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import 'Components/results_title.dart';

class ResultSectionSteel extends StatelessWidget {
  const ResultSectionSteel({super.key, required this.feetScreen});
final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
         const ResultsRow(
          title: 'Results:',
          result:'up coming',
        ),



      ],
    );
  }
}
