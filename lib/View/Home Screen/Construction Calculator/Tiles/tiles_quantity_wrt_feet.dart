import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Tiles%20Controller/tiles_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import '../../../Components/reusable_txt.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class TilesQuantityInFeet extends StatefulWidget {
  const TilesQuantityInFeet({super.key});

  @override
  State<TilesQuantityInFeet> createState() => _TilesQuantityInFeetState();
}

class _TilesQuantityInFeetState extends State<TilesQuantityInFeet> {
  @override
  void initState(){
    super.initState();
    tilesController.getQuantity(double.tryParse('1'));
    tilesController.getSqFtPrice(double.tryParse('0'));
    tilesController.getSqMPrice(double.tryParse('0'));
    tilesController.getLengthTilesDimension(double.tryParse('0.75'));
    tilesController.getWidthTilesDimension(double.tryParse('0.75'));
  }
  final TilesController tilesController=Get.put(TilesController());
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
                ReusableText(
                    title: 'Dimension of Bathroom Bed\n or Bedroom Bed',
                    fontSize: screenWidth * 0.045,
                    weight: FontWeight.w600,
                    alignTxt: TextAlign.center,
                    clr: Colors.white),
                //SectionOne() include components from start of screen to before first divider
                const SectionOneTiles(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                 SectionTwoTiles(feetScreen: true),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                 ResultSectionTiles(
                  feetScreen: true,
                ),
              ],
            ),
          ),
        ),
        title: 'Calculate Tiles Quantity');
  }
}
