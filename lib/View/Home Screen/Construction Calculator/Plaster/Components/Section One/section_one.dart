import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';
import '../input_field.dart';

class SectionOnePlaster extends StatelessWidget {
  const SectionOnePlaster({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableText(
            title: 'Mortar Ratio',
            fontSize: screenWidth * 0.045,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.16,
          width: screenWidth * 0.9,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/Paint meter.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputFieldRowPlaster(
                    rowTitle: 'Cement',
                    unit: '',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    removeUnitType: true, unitBoxWidth: 0,
                  ),
                  InputFieldRowPlaster(
                    rowTitle: 'Sand',
                    unit: '',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    removeUnitType: true, unitBoxWidth: 0,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        const CustomDivider(),
      ],
    );
  }
}
