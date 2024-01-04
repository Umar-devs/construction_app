import 'package:get/get.dart';

class BlockController extends GetxController {
  RxDouble lengthInWallDimension = 0.0.obs;
  RxDouble heightInWallDimension = 0.0.obs;
  RxDouble thickInWallDimension = 0.0.obs;
  RxDouble quantityInWallDimension = 0.0.obs;
  RxDouble lengthInBlockDimension = 0.0.obs;
  RxDouble heightInBlockDimension = 0.0.obs;
  RxDouble widthInBlockDimension = 0.0.obs;
  RxDouble oneBlockPrice = 0.0.obs;
  RxDouble doorArea = 0.0.obs;

  RxDouble volume = 0.0.obs;
  RxDouble volumeMeters = 0.0.obs;
  RxDouble numOfBlocks = 0.0.obs;
  RxDouble numOfBlocksMeters = 0.0.obs;
  RxDouble blockCost = 0.0.obs;
  RxDouble blockCostMeters = 0.0.obs;

  void getLengthWallDimension(value) {
    lengthInWallDimension.value = value;
  }

  void getHeightWallDimension(value) {
    heightInWallDimension.value = value;
  }

  void getThicknessWallDimension(value) {
    thickInWallDimension.value = value;
  }

  void getQuantityWallDimension(value) {
    quantityInWallDimension.value = value;
  }

  void getLengthBlockDimension(value) {
    lengthInBlockDimension.value = value;
  }

  void getHeightBlockWallDimension(value) {
    heightInBlockDimension.value = value;
  }

  void getWidthBlockWallDimension(value) {
    widthInBlockDimension.value = value;
  }

  void getOneBlockPrice(value) {
    oneBlockPrice.value = value;
  }

  void getWindowOrDoorArea(value) {
    doorArea.value = value;
  }

  void calculateNumberOfBlocks() {
    // Calculate the Total Wall Area in Square Feet:

    double totalWallArea = lengthInWallDimension.value *
        heightInWallDimension.value *
        quantityInWallDimension.value;

    // Calculate the Effective Wall Area (after deducting window or door area) in Square Feet:

    double effectiveWallArea = totalWallArea - doorArea.value;

    // Convert Wall Thickness from Inches to Feet:

    double wallThicknessInFeet = thickInWallDimension.value / 12;

    // Calculate the Volume of One Block in Cubic Feet:

    double volumeOfOneBlockInCFT = (lengthInBlockDimension.value / 12) *
        (heightInBlockDimension.value / 12) *
        (widthInBlockDimension.value / 12);

    // Calculate the Total Volume of Blocks in Cubic Feet Needed for the Wall:

    volume.value = effectiveWallArea * wallThicknessInFeet;
    numOfBlocks.value = volume.value / volumeOfOneBlockInCFT;
    blockCost.value=numOfBlocks.value*oneBlockPrice.value;
  }
  void calculateNumberOfBlocksMeters() {
    // Calculate the Total Wall Area in Square Feet:

    double totalWallArea = lengthInWallDimension.value *
        heightInWallDimension.value *
        quantityInWallDimension.value;

    // Calculate the Effective Wall Area (after deducting window or door area) in Square Feet:

    double effectiveWallArea = totalWallArea - doorArea.value;

    // Convert Wall Thickness from Inches to Feet:

    double wallThicknessInMeters = thickInWallDimension.value / 1000;

    // Calculate the Volume of One Block in Cubic Feet:

    double volumeOfOneBlockInCMT = (lengthInBlockDimension.value / 1000) *
        (heightInBlockDimension.value / 1000) *
        (widthInBlockDimension.value / 1000);

    // Calculate the Total Volume of Blocks in Cubic Feet Needed for the Wall:

    volumeMeters.value = effectiveWallArea * wallThicknessInMeters;
    numOfBlocksMeters.value = volumeMeters.value / volumeOfOneBlockInCMT;
    blockCostMeters.value=numOfBlocksMeters.value*oneBlockPrice.value;
  }

}
