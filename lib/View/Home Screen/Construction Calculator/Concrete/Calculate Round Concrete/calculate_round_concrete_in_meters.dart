import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Concrete%20Controller/round_concrete.dart';
import 'package:flutter/material.dart';
import '../../../../Components/custom_divider.dart';
import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';
import 'package:get/get.dart';
class RoundConcreteQuantityInMeters extends StatefulWidget {
  const RoundConcreteQuantityInMeters({super.key});

  @override
  State<RoundConcreteQuantityInMeters> createState() => _RoundConcreteQuantityInMetersState();
}

class _RoundConcreteQuantityInMetersState extends State<RoundConcreteQuantityInMeters> {
  @override
  void initState(){
    super.initState();
    roundConcreteController.getCement(double.tryParse('1'));
    roundConcreteController.getSand(double.tryParse('2'));
    roundConcreteController.getAggregate(double.tryParse('4'));
    roundConcreteController.getOneCementBagPrice(double.tryParse('0'));
    roundConcreteController.getDryVolume(double.tryParse('1.54'));
    roundConcreteController.getOneCementBagWeight(double.tryParse('50'));
    roundConcreteController.getQuantity(double.tryParse('1'));
    roundConcreteController.getConcretePrice(double.tryParse('0'));
  }
  final RoundConcreteController roundConcreteController=Get.put(RoundConcreteController());
  @override
  void dispose(){
    super.dispose();
    roundConcreteController.dispose();
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
                const SectionOneRoundConcrete(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                 SectionTwoRoundConcrete(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                 ResultSectionRoundConcrete(feetScreen: false,),
              ],
            ),
          ),
        ),
        title: 'Quantity of Concrete');
  }
}
