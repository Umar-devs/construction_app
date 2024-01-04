import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';
import '../input_field_row.dart';

class SectionOneRoundConcrete extends StatelessWidget {
  const SectionOneRoundConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableText(
            title: 'Concrete Ratio',
            fontSize: screenWidth * 0.045,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.18,
          width: screenWidth,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/Round Concrete.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputFieldRowRoundConcrete(
                    rowTitle: 'Cement',
                    removeUnitType: true,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    titleFontSize: screenWidth * 0.035,
                    unit: '',
                  ),
                  InputFieldRowRoundConcrete(
                    rowTitle: 'Sand',
                    removeUnitType: true,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    titleFontSize: screenWidth * 0.035,
                    unit: '',
                  ),
                  InputFieldRowRoundConcrete(
                    rowTitle: 'Aggregate',
                    removeUnitType: true,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    titleFontSize: screenWidth * 0.035,
                    unit: '',
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
