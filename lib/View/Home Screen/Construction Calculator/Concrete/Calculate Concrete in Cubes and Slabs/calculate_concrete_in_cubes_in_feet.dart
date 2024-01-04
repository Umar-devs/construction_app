import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Concrete%20Controller/flat_concrete_controller.dart';
import 'package:flutter/material.dart';
import '../../../../Components/custom_divider.dart';
import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';
import 'package:get/get.dart';

class CubesConcreteQuantityInFeet extends StatefulWidget {
   const CubesConcreteQuantityInFeet({super.key});

  @override
  State<CubesConcreteQuantityInFeet> createState() => _CubesConcreteQuantityInFeetState();
}

class _CubesConcreteQuantityInFeetState extends State<CubesConcreteQuantityInFeet> {
  final FlatConcreteController flatConcreteController=Get.put(FlatConcreteController());
  @override
  void initState(){
    super.initState();
    flatConcreteController.getCement(double.tryParse('1'));
    flatConcreteController.getSand(double.tryParse('2'));
    flatConcreteController.getAggregate(double.tryParse('4'));
    flatConcreteController.getOneCementBagPrice(double.tryParse('0'));
    flatConcreteController.getDryVolume(double.tryParse('1.54'));
    flatConcreteController.getOneCementBagWeight(double.tryParse('50'));
    flatConcreteController.getQuantity(double.tryParse('1'));
    flatConcreteController.getConcretePrice(double.tryParse('0'));
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
                const SectionOneConcrete(feetScreen: true,),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                 SectionTwoConcrete(feetScreen: true),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                 ResultSectionConcrete(feetScreen: true,),
              ],
            ),
          ),
        ),
        title: 'Quantity of Concrete');
  }
}
