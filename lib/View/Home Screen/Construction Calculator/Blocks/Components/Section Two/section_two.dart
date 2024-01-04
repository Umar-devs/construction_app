import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../input_field_row.dart';

class SectionTwoBlocks extends StatelessWidget {
  const SectionTwoBlocks({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableText(
            title: 'Dimension of Block with\nMortar Ratio',
            fontSize: screenWidth * 0.04,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.3,
          width: screenWidth,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/blocks feet 2.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Column(
                children: [
                  InputFieldRowBlocks(
                    rowTitle: 'Length',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'inch' : 'mm', unitBoxWidth: screenWidth * 0.085,
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Height',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'inch' : 'mm', unitBoxWidth: screenWidth * 0.085,
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Width',
                    titleFontSize: screenWidth * 0.035,
                    unit: feetScreen ? 'inch' : 'mm',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25, unitBoxWidth: screenWidth * 0.085,
                  ),
                  InputFieldRowBlocks(
                    rowTitle: '1 Block\nPrice',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    removeUnitType: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: 'NOS', unitBoxWidth: screenWidth * 0.06,
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Window or\ndoor area',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'Sq.Ft' : 'Sq.M', unitBoxWidth: screenWidth * 0.09,
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
