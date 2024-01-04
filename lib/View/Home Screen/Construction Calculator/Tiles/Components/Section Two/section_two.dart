import 'package:construction_app/Controllers/Tiles%20Controller/tiles_controller.dart';
import 'package:construction_app/Utils/utils.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Tiles/Components/input_field_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';

class SectionTwoTiles extends StatelessWidget {
  SectionTwoTiles({super.key, required this.feetScreen});
  final bool feetScreen;
  final TilesController tilesController = Get.put(TilesController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        InputFieldRowTiles(
            rowTitle: 'Per 1 Sq.Ft Price',
            unit: '',
            removeInputFieldType: true,
            titleFontSize: screenWidth * 0.035,
            leftPaddingToWholeRow: screenWidth * 0.03,
            spaceBetweenTitleAndField: 5),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.03),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ReusableText(
                title: 'OR',
                fontSize: screenWidth * 0.035,
                weight: FontWeight.w500,
                clr: Colors.grey),
          ),
        ),
        InputFieldRowTiles(
            rowTitle: 'Per 1 Sq.M Price',
            unit: '',
            removeInputFieldType: true,
            titleFontSize: screenWidth * 0.035,
            leftPaddingToWholeRow: screenWidth * 0.03,
            spaceBetweenTitleAndField: 5),
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
          child: ReusableText(
              title: 'Dimension of 1 Tile',
              fontSize: screenWidth * 0.04,
              weight: FontWeight.w500,
              clr: Colors.white70),
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * 0.05,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: screenHeight * 0.12,
                width: screenWidth * 0.35,
                child: Image.asset(
                  'assets/images/Tile Dimension Image.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.04),
                  child: InputFieldRowTiles(
                    rowTitle: 'Length',
                    spaceBetweenTitleAndField: screenWidth * 0.03,
                    titleFontSize: screenWidth * 0.035,
                    unit: feetScreen ? 'Ft' : 'cm',
                    leftPaddingToWholeRow: screenWidth * 0.0,
                    wantShortField: true,
                    inputFieldWidth: screenWidth * 0.35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.04),
                  child: InputFieldRowTiles(
                    rowTitle: 'Width',
                    titleFontSize: screenWidth * 0.035,
                    spaceBetweenTitleAndField: screenWidth * 0.033,
                    unit: feetScreen ? 'Ft' : 'cm',
                    wantShortField: true,
                    leftPaddingToWholeRow: screenWidth * 0.0,
                    inputFieldWidth: screenWidth * 0.35,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        CalculateBtn(
          onTap: () {
            if(tilesController.lengthInBedDimension.value==0.0||tilesController.widthInBedDimension.value==0.0)
              {
                Utils().toastMessage('Some details are empty');
              }
            else{
              feetScreen?
              tilesController.calculationsForFeet():tilesController.calculationsForMeters();
            }

          },
        ),
      ],
    );
  }
}
