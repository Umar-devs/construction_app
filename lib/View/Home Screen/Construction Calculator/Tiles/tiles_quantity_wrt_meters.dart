import 'package:construction_app/Controllers/Tiles%20Controller/tiles_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Constants/constants.dart';
import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import '../../../Components/reusable_txt.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class TilesQuantityInMeters extends StatefulWidget {
  const TilesQuantityInMeters({super.key});

  @override
  State<TilesQuantityInMeters> createState() => _TilesQuantityInMetersState();
}

class _TilesQuantityInMetersState extends State<TilesQuantityInMeters> {
  final TilesController tilesController=Get.put(TilesController());
  @override
  void initState(){
    super.initState();
    tilesController.getQuantity(double.tryParse('1'));
    tilesController.getSqFtPrice(double.tryParse('0'));
    tilesController.getSqMPrice(double.tryParse('0'));
    tilesController.getLengthTilesDimension(double.tryParse('30.48'));
    tilesController.getWidthTilesDimension(double.tryParse('30.48'));
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
              children: [ ReusableText(
                  title: 'Dimension of Bathroom Bed\n or Bedroom Bed',
                  fontSize: screenWidth * 0.045,
                  weight: FontWeight.w600,
                  alignTxt: TextAlign.center,
                  clr: Colors.white),
                //SectionOne() include components from start of screen to before first divider
                const SectionOneTiles(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                 SectionTwoTiles(feetScreen: false),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                 ResultSectionTiles(feetScreen: false,),
              ],
            ),
          ),
        ),
        title: 'Calculate Tiles Quantity');
  }
}