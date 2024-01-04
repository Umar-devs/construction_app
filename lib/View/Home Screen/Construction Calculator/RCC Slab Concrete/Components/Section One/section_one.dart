import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';
import '../input_field_row.dart';

class SectionOneRCCSlabConcrete extends StatelessWidget {
  const SectionOneRCCSlabConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableText(
            title: 'Dimension of Slab',
            fontSize: screenWidth * 0.035,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.16,
          width: screenWidth,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/RCC Slab Concrete Meter.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Column(
                children: [
                  InputFieldRowRccSlabConcrete(
                    rowTitle: 'Length(L)',
                    unit: feetScreen ? 'Ft' : 'M',
                    titleFontSize: screenWidth * 0.028,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                  InputFieldRowRccSlabConcrete(
                    rowTitle: 'Width(W)',
                    unit: feetScreen ? 'Ft' : 'M',
                    titleFontSize: screenWidth * 0.028,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                  InputFieldRowRccSlabConcrete(
                    rowTitle: 'Slab Thick\n(T)',
                    unit: feetScreen ? 'inch' : 'mm',
                    titleFontSize: screenWidth * 0.028,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
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
