import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Rcc%20Concrete%20Controller/rcc_concrete_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class RCCSlabDimensionsInFeet extends StatefulWidget {
  const RCCSlabDimensionsInFeet({super.key});

  @override
  State<RCCSlabDimensionsInFeet> createState() =>
      _RCCSlabDimensionsInFeetState();
}

class _RCCSlabDimensionsInFeetState extends State<RCCSlabDimensionsInFeet> {
  final RccSlabConcreteController rccSlabConcreteController =
      Get.put(RccSlabConcreteController());
  @override
  void initState() {
    super.initState();
    rccSlabConcreteController.getSlabThick(double.tryParse('6'));
    rccSlabConcreteController.getCementRatio(double.tryParse('1'));
    rccSlabConcreteController.getSandRatio(double.tryParse('2'));
    rccSlabConcreteController.getAggregateRatio(double.tryParse('4'));
    rccSlabConcreteController.getDryVolume(double.tryParse('1.54'));
    rccSlabConcreteController.getCementBagWeight(double.tryParse('50'));
    rccSlabConcreteController.getLongBarL(double.tryParse('6'));
    rccSlabConcreteController.getShortBarS(double.tryParse('4'));
    rccSlabConcreteController.getSteelNet(double.tryParse('1'));
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
                const SectionOneRCCSlabConcrete(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                SizedBox(
                  height: screenHeight * 0.006,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                SectionTwoRCCSlabConcrete(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                 ResultSectionRCCSlabConcrete(
                  feetScreen: true,
                ),
              ],
            ),
          ),
        ),
        title: 'RCC Slab Concrete Unit');
  }
}
