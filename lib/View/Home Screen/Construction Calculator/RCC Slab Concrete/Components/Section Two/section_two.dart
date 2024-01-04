import 'package:construction_app/Controllers/Rcc%20Concrete%20Controller/rcc_concrete_controller.dart';
import 'package:construction_app/Utils/utils.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';

class SectionTwoRCCSlabConcrete extends StatelessWidget {
  SectionTwoRCCSlabConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  final RccSlabConcreteController rccSlabConcreteController =
      Get.put(RccSlabConcreteController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * 0.05,
            ),
            ReusableText(
                title: 'Concrete Ratio',
                fontSize: screenWidth * 0.03,
                weight: FontWeight.w700,
                clr: Colors.white70),
            Column(
              children: [
                InputFieldRowRccSlabConcrete(
                  rowTitle: '',
                  unit: 'Cement',
                  titleFontSize: screenWidth * 0,
                  wantShortField: true,
                  inputFieldWidth: screenWidth * 0.17,
                  removeUnitType: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: ReusableText(
                      title: 'Cement',
                      fontSize: screenWidth * 0.028,
                      weight: FontWeight.w600,
                      clr: Colors.white70),
                ),
              ],
            ),
            Column(
              children: [
                InputFieldRowRccSlabConcrete(
                  rowTitle: '',
                  unit: 'Sand',
                  titleFontSize: screenWidth * 0,
                  wantShortField: true,
                  inputFieldWidth: screenWidth * 0.17,
                  removeUnitType: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ReusableText(
                      title: 'Sand',
                      fontSize: screenWidth * 0.028,
                      weight: FontWeight.w600,
                      clr: Colors.white70),
                ),
              ],
            ),
            Column(
              children: [
                InputFieldRowRccSlabConcrete(
                  rowTitle: '',
                  unit: 'Aggregate',
                  titleFontSize: screenWidth * 0,
                  wantShortField: true,
                  inputFieldWidth: screenWidth * 0.17,
                  removeUnitType: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: ReusableText(
                      title: 'Aggregate',
                      fontSize: screenWidth * 0.025,
                      weight: FontWeight.w600,
                      clr: Colors.white70),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.015,
        ),
        const CustomDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowRccSlabConcrete(
              rowTitle: 'Dry Volume',
              unit: '',
              titleFontSize: screenWidth * 0.028,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.16,
              spaceBetweenTitleAndRow: screenWidth * 0.028,
              removeUnitType: true,
            ),
            InputFieldRowRccSlabConcrete(
              rowTitle: 'Cement Bag',
              unit: 'Kg',
              titleFontSize: screenWidth * 0.028,
              wantShortField: true,
              spaceBetweenTitleAndRow: screenWidth * 0.028,
              inputFieldWidth: screenWidth * 0.25,
            ),
          ],
        ),
        ReusableText(
            title: 'Space Between Two Steel',
            fontSize: screenWidth * 0.035,
            weight: FontWeight.w500,
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
                    'assets/images/space steel.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputFieldRowRccSlabConcrete(
                    rowTitle: 'Long Bar(L)',
                    titleFontSize: screenWidth * 0.028,
                    unit: feetScreen ? 'inch' : 'MM',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                  InputFieldRowRccSlabConcrete(
                    rowTitle: 'Short Bar\n(S)',
                    titleFontSize: screenWidth * 0.028,
                    unit: feetScreen ? 'inch' : 'MM',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                  InputFieldRowRccSlabConcrete(
                    rowTitle: 'Steel 1 kg\nPrice',
                    titleFontSize: screenWidth * 0.028,
                    unit: 'Price',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          children: [
            InputFieldRowRccSlabConcrete(
              rowTitle: 'S Bar Steel\nDia',
              titleFontSize: screenWidth * 0.028,
              unit: 'mm',
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
            InputFieldRowRccSlabConcrete(
              rowTitle: 'L Bar Steel\nDia',
              titleFontSize: screenWidth * 0.028,
              unit: 'mm',
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowRccSlabConcrete(
              rowTitle: 'Single or\nDouble Steel\nNet',
              titleFontSize: screenWidth * 0.023,
              unit: 'nos',
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
            InputFieldRowRccSlabConcrete(
              rowTitle: '1 Cement\nBag',
              titleFontSize: screenWidth * 0.028,
              unit: 'Price',
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        CalculateBtn(
          onTap: () {
            if (rccSlabConcreteController.length.value == 0.0 ||
                rccSlabConcreteController.width.value == 0.0 ||
                rccSlabConcreteController.sBarSteelDia.value == 0.0 ||
                rccSlabConcreteController.lBarSteelDia.value == 0.0) {
              Utils().toastMessage('Some details are Empty');
            } else {
              feetScreen
                  ? rccSlabConcreteController.calculationsFeetScreen()
                  : rccSlabConcreteController.calculationsMeterScreen();
            }
          },
        ),
      ],
    );
  }
}
