import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../Area/Circular Area/Components/Result Section/Components/results_title.dart';
import '../../../Plaster/Components/Result Section/Components/results_row.dart';

class ResultSectionRoom extends StatelessWidget {
  const ResultSectionRoom({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const ResultsRowPlaster(title: 'Plaster Area', result: ''),
        const ResultsRowPlaster(title: 'Plaster Cost', result: ''),
        const ResultsRowPlaster(title: 'Cement Bags', result: ''),
        const ResultsRowPlaster(title: 'Cement Cost', result: ''),
        const ResultsRowPlaster(title: 'Sand', result: ''),
      ],
    );
  }
}
