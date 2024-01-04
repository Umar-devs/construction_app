import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../Constants/constants.dart';
import '../Calculate Concrete in Cubes and Slabs/calculate_concrete_in_cubes_in_feet.dart';
import '../Calculate Concrete in Cubes and Slabs/calculate_concrete_in_cubes_in_meters.dart';
import '../Calculate Round Concrete/calculate_round_concrete_in_feet.dart';
import '../Calculate Round Concrete/calculate_round_concrete_in_meters.dart';
import 'Components/calculation.dart';
import 'package:get/get.dart';

class ConcreteUnit extends StatelessWidget {
  const ConcreteUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
        ),
        backgroundColor: const Color(0xff0081EE),
        title:  const Text(
          'Concrete Unit',
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
          ),
        ),
      ),
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CalculationConcreteUnit(
                calculationTitle: 'Calculate Cube and Slab Concrete',
                imgPath: 'assets/images/Cube Concrete.png',
                firstBtnLabel: 'Concrete Foot',
                secBtnLabel: 'Concrete Meter',
                firstBtnOnTap: () {
                  Get.to(()=> const CubesConcreteQuantityInFeet(),
                      duration: const Duration(milliseconds: transitionTime),
                      transition: Transition.size);
                },
                secBtnOnTap: () {
                  Get.to(()=>const CubesConcreteQuantityInMeters(),
                      duration:  const Duration(milliseconds: transitionTime),
                      transition: Transition.size);
                },
              ),
              const CustomDivider(
                clr: Colors.white70,
              ),
              CalculationConcreteUnit(
                calculationTitle: 'Calculate Round Concrete',
                imgPath: 'assets/images/Round Concrete.png',
                firstBtnLabel: 'Concrete Foot',
                secBtnLabel: 'Concrete Meter',
                firstBtnOnTap: () {
                  Get.to(()=>const RoundConcreteQuantityInFeet(),
                      duration: const Duration(milliseconds: transitionTime),
                      transition: Transition.size);
                },
                secBtnOnTap: () {
                  Get.to(()=>const RoundConcreteQuantityInMeters(),
                      duration: const Duration(milliseconds: transitionTime),
                      transition: Transition.size);
                },
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
