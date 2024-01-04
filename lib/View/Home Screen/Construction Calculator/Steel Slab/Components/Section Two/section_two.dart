import 'package:construction_app/Controllers/Slab%20Steel%20Controller/slab_steel.dart';
import 'package:construction_app/Utils/utils.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Steel%20Slab/Components/input_field_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/top_image_and_text_box.dart';

class SectionTwoSlabSteel extends StatelessWidget {
  SectionTwoSlabSteel({super.key, required this.feetScreen});
  final bool feetScreen;
  final SlabSteelController slabSteelController =
      Get.put(SlabSteelController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        const TitleBoxWithImage(
          imgPath: 'assets/images/slab steel meter 1.png',
          title: 'Space Between \nTwo Steel',
        ),
        InputFieldRowSlabSteel(
          rowTitle: 'Long Bar(L)',
          titleFontSize: screenWidth * 0.035,
          unit: feetScreen ? 'inch' : 'mm',
          unitBoxWidth: screenWidth * 0.08,
        ),
        InputFieldRowSlabSteel(
            rowTitle: 'Short Bar(a)',
            titleFontSize: screenWidth * 0.035,
            unit: feetScreen ? 'inch' : 'mm',
            unitBoxWidth: screenWidth * 0.08),
        InputFieldRowSlabSteel(
            rowTitle: 'Quantity',
            unit: 'Nos',
            unitBoxWidth: screenWidth * 0.08,
            titleFontSize: screenWidth * 0.035),
        InputFieldRowSlabSteel(
            rowTitle: 'Steel 1 kg\nPrice',
            unit: 'Price',
            titleFontSize: screenWidth * 0.035,
            unitBoxWidth: screenWidth * 0.09),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        CalculateBtn(
          onTap: () {
            if (slabSteelController.length.value == 0.0 ||
                slabSteelController.width.value == 0.0 ||
                slabSteelController.diameter.value == 0.0) {
              Utils().toastMessage('Some details are empty');
            } else {
              feetScreen
                  ? slabSteelController.calculationsForSlabSteelFeet()
                  : slabSteelController.calculationsForSlabSteelMeters();
            }
          },
        ),
      ],
    );
  }
}
