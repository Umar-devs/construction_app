import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/Controllers/Block%20Controller/block_controller.dart';
import 'package:flutter/material.dart';
import '../../../../Utils/utils.dart';
import '../../../Components/customBtn.dart';
import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';
import 'package:get/get.dart';

class BlocksDimensionsInMeters extends StatefulWidget {
  const BlocksDimensionsInMeters({super.key});

  @override
  State<BlocksDimensionsInMeters> createState() =>
      _BlocksDimensionsInMetersState();
}

class _BlocksDimensionsInMetersState extends State<BlocksDimensionsInMeters> {
  @override
  void initState() {
    super.initState();
    blockController.getThicknessWallDimension(double.tryParse('225'));
    blockController.getQuantityWallDimension(double.tryParse('1'));
    blockController.getLengthBlockDimension(double.tryParse('450'));
    blockController.getHeightBlockWallDimension(double.tryParse('225'));
    blockController.getWidthBlockWallDimension(double.tryParse('225'));
    blockController.getOneBlockPrice(double.tryParse('0'));
    blockController.getWindowOrDoorArea(double.tryParse('0'));
  }

  final BlockController blockController = Get.put(BlockController());
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
                const SectionOneBlocks(
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
                const SectionTwoBlocks(
                  feetScreen: false,
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                CustomBtn(
                  btnHeight: 0.05,
                  btnWidth: 0.45,
                  topRightBorderRadius: 5,
                  topLeftBorderRadius: 5,
                  bottomRightBorderRadius: 5,
                  bottomLeftBorderRadius: 5,
                  label: 'CALCULATE',
                  onPress: () {

                    if (blockController.lengthInWallDimension.value == 0.0 ||
                        blockController.heightInWallDimension.value == 0.0 ||
                        blockController.lengthInWallDimension.value == 0.0) {
                      Utils().toastMessage('Some details are empty');
                    } else {
                      blockController.calculateNumberOfBlocksMeters();
                    }
                  },
                  btnFontSize: 0.035,
                  btnImgHeight: screenHeight * 0.01,
                  btnImgWidth: screenWidth * 0.02,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ResultSectionBlocks(
                  feetScreen: false,
                ),
              ],
            ),
          ),
        ),
        title: 'Calculate Block Quantity');
  }
}
