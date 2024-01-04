import 'package:construction_app/Controllers/Paint%20Controller/paint_controller.dart';
import 'package:construction_app/Utils/utils.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';
import 'package:get/get.dart';

class SectionTwoPaint extends StatelessWidget {
   SectionTwoPaint({super.key, required this.feetScreen});
  final bool feetScreen;
  final PaintController paintController=Get.put(PaintController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.02),
          child: InputFieldRowPaint(
            rowTitle: '1 Gallon',
            titleFontSize: screenWidth * 0.035,
            unit: 'Litter',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.02),
          child: InputFieldRowPaint(
            rowTitle: '1 Gallon price',
            titleFontSize: screenWidth * 0.035,
            unit: 'Price',
          ),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
         CalculateBtn(onTap: (){
           if(paintController.length.value==0.0||paintController.height.value==0.0){
             Utils().toastMessage('Some details are empty');
           }
           else if(feetScreen==true){
             paintController.dryWallCalculationsFeet();
             paintController.wetWallCalculationsFeet();
           }
           else{
             paintController.dryWallCalculationsMeters();
             paintController.wetWallCalculationsMeters();
           }

         },),
      ],
    );
  }
}
