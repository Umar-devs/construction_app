import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class BricksController extends GetxController {
  RxDouble lengthInDimensionOfWall = 0.0.obs;
  RxDouble heightInDimensionOfWall = 0.0.obs;
  RxDouble thickInInchesInDimensionOfWall = 0.0.obs;
  RxDouble thickInFeetInDimensionOfWall = 0.0.obs;
  RxDouble thickInMetersInDimensionOfWall = 0.0.obs;
  RxDouble doorArea = 0.0.obs;
   final RxDouble lengthInBrickDimensionFeet = 0.0.obs;
   final RxDouble lengthInBrickDimensionMeters = 0.0.obs;
   final RxDouble widthInBrickDimensionFeet = 0.0.obs;
   final RxDouble widthInBrickDimensionMeters = 0.0.obs;
   final RxDouble thickInInchesInBrickDimension = 0.0.obs;
   final RxDouble thickInMMInBrickDimension = 0.0.obs;
  RxDouble oneBrickPrice = 0.0.obs;
  RxDouble quantityInBrickDimension = 0.0.obs;
  RxDouble weightOfCementBag = 0.0.obs;
  RxDouble mortarRatioCement = 0.0.obs;
  RxDouble mortarRatioSand = 0.0.obs;
  RxDouble oneCementBagPriceFeet = 0.0.obs;
  RxDouble oneCementBagPriceMeters = 0.0.obs;

  RxDouble totalCementBagsFeet = 0.0.obs;
  RxDouble totalCementBagsMeters = 0.0.obs;
  RxDouble volumeFeet = 0.0.obs;
  RxDouble volumeMeter = 0.0.obs;
  RxDouble bricksCost = 0.0.obs;
  RxDouble cementCostFeet = 0.0.obs;
  RxDouble cementCostMeters = 0.0.obs;
  RxDouble totalNumberOfBricksFeet = 0.0.obs;
  RxDouble totalNumberOfBricksMeters = 0.0.obs;
  RxDouble totalSandVolumeFeet = 0.0.obs;
  RxDouble totalSandVolumeMeters = 0.0.obs;
  void getLengthWallDimension(value) {
    lengthInDimensionOfWall.value = value;
  }

  void getHeight(value) {
    heightInDimensionOfWall.value = value;
  }

  void getThicknessFeet(value) {
    thickInInchesInDimensionOfWall.value = value;
    thickInFeetInDimensionOfWall.value =
        thickInInchesInDimensionOfWall.value / 12;
  }

  void getThicknessMeters(value) {
    thickInMetersInDimensionOfWall.value = value;
    thickInMetersInDimensionOfWall.value =
        thickInMetersInDimensionOfWall.value / 1000;
  }

  void getDoorArea(value) {
    doorArea.value = value;
  }

  void getLengthInBrickDimensionFeet(value) {
    lengthInBrickDimensionFeet.value = value;
    lengthInBrickDimensionFeet.value = lengthInBrickDimensionFeet.value / 12;
  }

  void getLengthInBrickDimensionMeters(value) {
    lengthInBrickDimensionMeters.value = value;
    lengthInBrickDimensionMeters.value =
        lengthInBrickDimensionMeters.value / 1000;
  }

  void getWidthInBrickDimensionFeet(value) {
    widthInBrickDimensionFeet.value = value;
    widthInBrickDimensionFeet.value = widthInBrickDimensionFeet / 12;
  }

  void getWidthInBrickDimensionMeters(value) {
    widthInBrickDimensionMeters.value = value;
    widthInBrickDimensionMeters.value = widthInBrickDimensionMeters / 1000;
  }

  void getThicknessInBrickDimensionFeet(value) {
    thickInInchesInBrickDimension.value = value;
    thickInInchesInBrickDimension.value =
        thickInInchesInBrickDimension.value / 12;
  }

  void getThicknessInBrickDimensionMeters(value) {
    thickInMMInBrickDimension.value = value;
    thickInMMInBrickDimension.value = thickInMMInBrickDimension.value / 1000;
  }

  void getOneBrickPrice(value) {
    oneBrickPrice.value = value;
  }

  void getWeightOfCementBag(value) {
    weightOfCementBag.value = value;
  }

  void getMortarRatioCement(value) {
    mortarRatioCement.value = value;
  }

  void getQuantityInBrickDimension(value) {
    quantityInBrickDimension.value = value;
  }

  void getMortarRatioSand(value) {
    mortarRatioSand.value = value;
  }

  void getOneCementBagPriceFeet(value) {
    oneCementBagPriceFeet.value = value;
  }

  void getOneCementBagPriceMeters(value) {
    oneCementBagPriceMeters.value = value;
  }

  void calculateVolumeFeet() {
    volumeFeet.value = (lengthInDimensionOfWall.value *
            heightInDimensionOfWall.value *
            thickInFeetInDimensionOfWall.value*quantityInBrickDimension.value) -
        (doorArea.value);
    volumeFeet.value = double.parse(volumeFeet.value.toStringAsFixed(5));
  }

  void calculateVolumeMeter() {
    double partOne = lengthInDimensionOfWall.value *
        heightInDimensionOfWall.value *
        thickInMetersInDimensionOfWall.value*quantityInBrickDimension.value;

    double partTwo = doorArea.value * thickInMetersInDimensionOfWall.value;

    volumeMeter.value = (partOne) - (partTwo);

    volumeMeter.value = double.parse(volumeMeter.value.toStringAsFixed(2));
  }

  void calculateCementBagsFeet() {
    double partOne = volumeFeet.value * 0.3175 * mortarRatioCement.value;

    double sumOfMortars = mortarRatioCement.value + mortarRatioSand.value;

    totalCementBagsFeet.value =
        (partOne / sumOfMortars) * (40 / weightOfCementBag.value);
    cementCostFeet.value =
        oneCementBagPriceFeet.value * totalCementBagsFeet.value;
  }

  void calculateCementBagsMeters() {
    double partOne = volumeMeter.value * 0.30 * mortarRatioCement.value;

    double sumOfMortars = mortarRatioCement.value + mortarRatioSand.value;
    totalCementBagsMeters.value =
        (partOne / sumOfMortars) * (1440 / weightOfCementBag.value);
    cementCostMeters.value =
        oneCementBagPriceMeters.value * totalCementBagsMeters.value;
  }

  void calculateNumberOfBricksFeet() {
    double denominator = lengthInBrickDimensionFeet.value *
        widthInBrickDimensionFeet.value *
        thickInInchesInBrickDimension.value;
    if (kDebugMode) {
      print(denominator.toString());
    }
    totalNumberOfBricksFeet.value = (1 / denominator) * 0.95 * volumeFeet.value;
    totalNumberOfBricksFeet.value =
        double.parse(totalNumberOfBricksFeet.value.toStringAsFixed(4));
    bricksCost.value = totalNumberOfBricksFeet.value * oneBrickPrice.value;
  }

  void calculateNumberOfBricksMeters() {
    double denominator = lengthInBrickDimensionMeters.value *
        widthInBrickDimensionMeters.value *
        thickInMMInBrickDimension.value;

    totalNumberOfBricksMeters.value = (volumeMeter.value / denominator);
    bricksCost.value = totalNumberOfBricksMeters.value * oneBrickPrice.value;
  }

  void calculateTotalSandFeet() {
    totalSandVolumeFeet.value =
        (volumeFeet.value * 0.3175 * mortarRatioSand.value) /
            (mortarRatioSand.value + mortarRatioCement.value);
    totalSandVolumeFeet.value =
        double.parse(totalSandVolumeFeet.value.toStringAsFixed(4));
  }

  void calculateTotalSandMeters() {
    totalSandVolumeMeters.value =
        (volumeMeter.value * 0.30 * mortarRatioSand.value) /
            (mortarRatioSand.value + mortarRatioCement.value);
  }
}
