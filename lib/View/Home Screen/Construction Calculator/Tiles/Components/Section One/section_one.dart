import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Tiles/Components/input_field_row.dart';
import 'package:flutter/material.dart';

import '../../../../../../../Constants/constants.dart';

class SectionOneTiles extends StatelessWidget {
  const SectionOneTiles({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.2,
          width: screenWidth,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:screenWidth*0.045),
                    child: InputFieldRowTiles(
                      rowTitle: 'Length(L)',
                      titleFontSize: screenWidth * 0.035,
                      spaceBetweenTitleAndField: screenWidth * 0.0,
                      unit: feetScreen ? 'Ft' : 'M',
                      wantShortField: true,
                      rowWidth: screenWidth * 0.55,
                      inputFieldWidth: screenWidth * 0.35,
                      leftPaddingToWholeRow: screenWidth * 0.0,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:screenWidth*0.045),
                    child: InputFieldRowTiles(
                      rowTitle: 'Width(W)',
                      titleFontSize: screenWidth * 0.035,
                      leftPaddingToWholeRow: screenWidth * 0.0,
                      spaceBetweenTitleAndField: screenWidth * 0.0,
                      unit: feetScreen ? 'Ft' : 'M',
                      wantShortField: true,
                      rowWidth: screenWidth * 0.55,
                      inputFieldWidth: screenWidth * 0.35,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:screenWidth*0.045),
                    child: InputFieldRowTiles(
                      rowTitle: 'Quantity',
                      leftPaddingToWholeRow: screenWidth * 0.0,
                      spaceBetweenTitleAndField: screenWidth * 0.0,
                      wantShortField: true,
                      rowWidth: screenWidth * 0.55,
                      inputFieldWidth: screenWidth * 0.35,
                      titleFontSize: screenWidth * 0.035,
                      unit: 'nos',
                    ),
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
