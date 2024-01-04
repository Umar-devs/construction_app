import 'package:flutter/material.dart';
import '../../../../../../../../../Constants/constants.dart';
import '../../../../../../../Components/custom_divider.dart';
import '../../../../../../../Components/reusable_txt.dart';


class ResultsTitle extends StatelessWidget {
  const ResultsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Center(
            child: ReusableText(
                title: 'Results',
                fontSize: screenWidth * 0.04,
                weight: FontWeight.w500,
                clr: Colors.white70),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
