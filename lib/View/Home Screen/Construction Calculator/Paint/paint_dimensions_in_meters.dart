import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Paint%20Controller/paint_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class PaintDimensionsInMeters extends StatefulWidget {
  const PaintDimensionsInMeters({super.key});

  @override
  State<PaintDimensionsInMeters> createState() =>
      _PaintDimensionsInMetersState();
}

class _PaintDimensionsInMetersState extends State<PaintDimensionsInMeters> {
  final PaintController paintController = Get.put(PaintController());
  @override
  void initState() {
    super.initState();
    paintController.getQuantity(double.tryParse('1'));
    paintController.getOneGallon(double.tryParse('3.785'));
    paintController.getOneGallonPrice(double.tryParse('0'));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        scaffoldChild: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //SectionOne() include components from start of screen to before first divider
                const SectionOnePaint(
                  feetScreen: false,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                SizedBox(
                  height: screenHeight * 0.006,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                SectionTwoPaint(
                  feetScreen: false,
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                ResultSectionPaint(
                  feetScreen: false,
                ),
              ],
            ),
          ),
        ),
        title: 'Quantity of Paint');
  }
}
