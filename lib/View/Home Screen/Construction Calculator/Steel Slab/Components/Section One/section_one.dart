import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Steel%20Slab/Components/input_field_row.dart';
import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';

class SectionOneSlabSteel extends StatelessWidget {
  const SectionOneSlabSteel({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableText(
            title: 'Dimension of Slab',
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
                    'assets/images/Tiles foot.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.01,
              ),
              Column(
                children: [
                  InputFieldRowSlabSteel(
                    rowTitle: 'Length(L)',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'Ft' : 'M',
                    unitBoxWidth: screenWidth * 0.06,
                  ),
                  InputFieldRowSlabSteel(
                    rowTitle: 'Width(W)',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'Ft' : 'M',
                    unitBoxWidth: screenWidth * 0.06,
                  ),
                  InputFieldRowSlabSteel(
                    rowTitle: 'Steel(Dia)',
                    titleFontSize: screenWidth * 0.035,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'Sutar' : 'mm',
                    unitBoxWidth: screenWidth * 0.09,
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
