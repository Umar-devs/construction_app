import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/custom_divider.dart';
import '../../../../../Components/reusable_txt.dart';

class ConvertToTile extends StatelessWidget {
  const ConvertToTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Center(
            child: ReusableText(
                title: 'Convert to',
                fontSize: screenWidth * 0.03,
                weight: FontWeight.w500,
                clr: Colors.white70),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
