import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Plaster%20Controller/plaster_controller.dart';
import 'package:construction_app/View/Components/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';
import 'package:get/get.dart';
class PlasterInMeters extends StatefulWidget {
  const PlasterInMeters({super.key});

  @override
  State<PlasterInMeters> createState() => _PlasterInMetersState();
}

class _PlasterInMetersState extends State<PlasterInMeters> {
  @override
  void initState(){
    super.initState();
    plasterController.getCement(double.tryParse('1'));
    plasterController.getSand(double.tryParse('4'));
    plasterController.getThickness(double.tryParse('12'));
    plasterController.getDryVolume(double.tryParse('1.27'));
    plasterController.getOneCementBagWeight(double.tryParse('50'));
    plasterController.getQuantity(double.tryParse('1'));
    plasterController.getPlasterPrice(double.tryParse('0'));
  }
  final PlasterController plasterController=Get.put(PlasterController());
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
                const SectionOnePlaster(feetScreen: false),
                SectionTwoPlaster(feetScreen: false),
                 ResultSectionPlaster(feetScreen: false),
              ],
            ),
          ),
        ),
        title: 'Quantity of Plaster');
  }
}
