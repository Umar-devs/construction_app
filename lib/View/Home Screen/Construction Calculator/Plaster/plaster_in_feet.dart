import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Plaster%20Controller/plaster_controller.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Components/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class PlasterInFeet extends StatefulWidget {
  const PlasterInFeet({super.key});

  @override
  State<PlasterInFeet> createState() => _PlasterInFeetState();
}

class _PlasterInFeetState extends State<PlasterInFeet> {
  final PlasterController plasterController=Get.put(PlasterController());
  @override
  void initState(){
    super.initState();
    plasterController.getCement(double.tryParse('1'));
    plasterController.getHeight(double.tryParse('0'));
    plasterController.getLength(double.tryParse('0'));
    plasterController.getSand(double.tryParse('4'));
    plasterController.getThickness(double.tryParse('0.5'));
    plasterController.getDryVolume(double.tryParse('1.27'));
    plasterController.getOneCementBagWeight(double.tryParse('50'));
    plasterController.getQuantity(double.tryParse('1'));
    plasterController.getPlasterPrice(double.tryParse('0'));
  }
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        scaffoldChild: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child:   SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                 const SectionOnePlaster(feetScreen: true),
                const CustomDivider(),
                SectionTwoPlaster(feetScreen: true),
                 ResultSectionPlaster(feetScreen: true),
              ],
            ),
          ),
        ),
        title: 'Quantity of Plaster');
  }
}
