import 'package:construction_app/Controllers/Bricks%20Controller/bricks_circular_controller.dart';
import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Circle%20Bricks%20Wall/Components/input_field_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../../../Utils/utils.dart';
import '../../../../../../Components/reusable_txt.dart';

class SectionTwoCircularWall extends StatelessWidget {
  SectionTwoCircularWall({super.key, required this.feetScreen});
  final bool feetScreen;
  final CircleBricksController circleBricksController =
      Get.put(CircleBricksController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.005,
        ),
        ReusableText(
            title: 'Dimension of Brick With Mortar',
            fontSize: screenWidth * 0.04,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05, right: screenWidth * 0.03),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/brick image.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                InputFieldRowCircleBricks(
                  rowTitle: 'Length (L)',
                  unit: feetScreen ? 'inch' : 'mm',
                  titleFontSize: screenWidth * 0.035,
                  wantShortField: true,
                  rowWidth: screenWidth * 0.5,
                  inputFieldWidth: screenWidth * 0.25,
                  leftPaddingToWholeRow: screenWidth * 0.05,
                  spaceBetweenTitleAndField: screenWidth * 0.05,
                  feetScreen: feetScreen,
                  unitBoxSize: screenWidth * 0.085,
                ),
                InputFieldRowCircleBricks(
                  rowTitle: 'Width (W)',
                  unit: feetScreen ? 'inch' : 'mm',
                  titleFontSize: screenWidth * 0.035,
                  wantShortField: true,
                  rowWidth: screenWidth * 0.5,
                  inputFieldWidth: screenWidth * 0.25,
                  leftPaddingToWholeRow: screenWidth * 0.05,
                  spaceBetweenTitleAndField: screenWidth * 0.05,
                  feetScreen: feetScreen,
                  unitBoxSize: screenWidth * 0.085,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowCircleBricks(
              rowTitle: 'Thick',
              unit: feetScreen ? 'inch' : 'mm',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.25,
              leftPaddingToWholeRow: screenWidth * 0.05,
              spaceBetweenTitleAndField: screenWidth * 0.02,
              feetScreen: feetScreen,
              unitBoxSize: screenWidth * 0.085,
            ),
            InputFieldRowCircleBricks(
              rowTitle: '1 Brick Price',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.2,
              leftPaddingToWholeRow: screenWidth * 0.0,
              removeInputFieldType: true,
              spaceBetweenTitleAndField: screenWidth * 0.02,
              feetScreen: feetScreen,
              unitBoxSize: screenWidth * 0.06,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowCircleBricks(
              rowTitle: '1 cement\n  bag',
              unit: 'kg',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.25,
              leftPaddingToWholeRow: screenWidth * 0.05,
              spaceBetweenTitleAndField: screenWidth * 0.02,
              feetScreen: feetScreen,
              unitBoxSize: screenWidth * 0.06,
            ),
            InputFieldRowCircleBricks(
              rowTitle: 'Quantity\n(nos)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.2,
              leftPaddingToWholeRow: screenWidth * 0.0,
              removeInputFieldType: true,
              spaceBetweenTitleAndField: screenWidth * 0.06,
              feetScreen: feetScreen,
              unitBoxSize: screenWidth * 0.06,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InputFieldRowCircleBricks(
              rowTitle: 'Mortar Ratio',
              unit: 'cement',
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.2,
              leftPaddingToWholeRow: screenWidth * 0.065,
              removeInputFieldType: true,
              spaceBetweenTitleAndField: screenWidth * 0.05,
              unitBoxSize: screenWidth * 0.05,
              feetScreen: true,
            ),
            InputFieldRowCircleBricks(
              rowTitle: '',
              unit: 'sand',
              titleFontSize: screenWidth * 0.035,
              wantShortField: true,
              rowWidth: screenWidth * 0.25,
              inputFieldWidth: screenWidth * 0.2,
              leftPaddingToWholeRow: screenWidth * 0.0,
              removeInputFieldType: true,
              spaceBetweenTitleAndField: screenWidth * 0.0,
              unitBoxSize: screenWidth * 0.05,
              feetScreen: true,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.25, right: screenWidth * 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableText(
                  title: 'Cement',
                  fontSize: screenWidth * 0.035,
                  weight: FontWeight.w500,
                  clr: Colors.white),
              SizedBox(
                width: screenWidth * 0.12,
              ),
              ReusableText(
                  title: 'Sand',
                  fontSize: screenWidth * 0.035,
                  weight: FontWeight.w500,
                  clr: Colors.white),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        InputFieldRowCircleBricks(
          rowTitle: '1 cement bag price',
          unit: 'Price',
          titleFontSize: screenWidth * 0.035,
          wantShortField: true,
          rowWidth: screenWidth,
          inputFieldWidth: screenWidth * 0.5,
          leftPaddingToWholeRow: screenWidth * 0.06,
          spaceBetweenTitleAndField: screenWidth * 0.05,
          feetScreen: feetScreen,
          unitBoxSize: screenWidth * 0.085,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: GestureDetector(
            onTap: () {
              Utils().toastMessage(
                  circleBricksController.cementBagWeight.value.toString());

              if (circleBricksController.diaMeter.value == 0.0 ||
                  circleBricksController.heightCircleWall.value == 0.0) {
                Utils().toastMessage('Some details are Empty');
              } else {
                feetScreen
                    ? circleBricksController.calculateVolume()
                    : circleBricksController.calculateVolumeMeters();
                feetScreen
                    ? circleBricksController.calculateNumberOfBricks()
                    : circleBricksController.calculateNumberOfBricksMeters();
                feetScreen
                    ? circleBricksController.calculateCementBagsFeet()
                    : circleBricksController.calculateCementBagsMeters();
                feetScreen
                    ? circleBricksController.calculateSand()
                    : circleBricksController.calculateSandMeters();
              }
            },
            child: Container(
              height: screenHeight * 0.045,
              width: screenWidth * 0.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff008FFF),
                      Color(0xff00227E),
                    ]),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
              ),
              child: Center(
                child: ReusableText(
                    title: 'Calculate',
                    fontSize: screenWidth * 0.035,
                    weight: FontWeight.w500,
                    clr: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
