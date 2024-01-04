import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Slab%20Steel%20Controller/slab_steel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class SlabSteelDimensionsInFeet extends StatefulWidget {
  const SlabSteelDimensionsInFeet({super.key});

  @override
  State<SlabSteelDimensionsInFeet> createState() =>
      _SlabSteelDimensionsInFeetState();
}

class _SlabSteelDimensionsInFeetState extends State<SlabSteelDimensionsInFeet> {
  @override
  void initState() {
    super.initState();
    slabSteelController.getLongBar(double.tryParse('4'));
    slabSteelController.getShortBar(double.tryParse('6'));
    slabSteelController.getQuantity(double.tryParse('1'));
  }

  final SlabSteelController slabSteelController =
      Get.put(SlabSteelController());
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
                const SectionOneSlabSteel(
                  feetScreen: true,
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
                SectionTwoSlabSteel(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                 ResultSectionSlabSteel(
                  feetScreen: true,
                ),
              ],
            ),
          ),
        ),
        title: 'Quantity of Slab Steel');
  }
}
