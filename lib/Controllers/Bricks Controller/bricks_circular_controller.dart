import 'package:get/get.dart';

class CircleBricksController extends GetxController {
  RxDouble diaMeter = 0.0.obs;
  RxDouble heightCircleWall = 0.0.obs;
  RxDouble thickCircleWall = 0.0.obs;

  RxDouble doorArea = 0.0.obs;

  RxDouble lengthBrickDimension = 0.0.obs;
  RxDouble widthBrickDimension = 0.0.obs;
  RxDouble thickBrickDimension = 0.0.obs;
  RxDouble brickPrice = 0.0.obs;
  RxDouble cementBagWeight = 0.0.obs;
  RxDouble cementBagNumbers = 0.0.obs;
  RxDouble mortarRatioCement = 0.0.obs;
  RxDouble mortarRatioSand = 0.0.obs;
  RxDouble oneCementBagPrice = 0.0.obs;

  RxDouble totalVolume = 0.0.obs;
  RxDouble numberOfBricks = 0.0.obs;
  RxDouble bricksCost = 0.0.obs;
  RxDouble oneBrickPrice = 0.0.obs;
  RxDouble totalCementBags = 0.0.obs;
  RxDouble cementCost = 0.0.obs;
  RxDouble cementCostMeters = 0.0.obs;
  RxDouble totalSandVolume = 0.0.obs;
  void getDiameter(value) {
    diaMeter.value = value;
  }

  void getHeight(value) {
    heightCircleWall.value = value;
  }

  void getLengthInBricksDimension(value) {
    lengthBrickDimension.value = value;
    lengthBrickDimension.value = lengthBrickDimension.value / 12;
  }

  void getWidthInBricksDimension(value) {
    widthBrickDimension.value = value;
    widthBrickDimension.value = widthBrickDimension.value / 12;
  }

  void getThicknessOfBricks(value) {
    thickBrickDimension.value = value;
    thickBrickDimension.value = thickBrickDimension.value / 12;
  }

  void getDoorArea(value) {
    doorArea.value = value;
  }

  void getOneBrickPrice(value) {
    oneBrickPrice.value = value;
  }

  void getMortarRatioCement(value) {
    mortarRatioCement.value = value;
  }

  void getMortarRatioSand(value) {
    mortarRatioSand.value = value;
  }

  void getCementBagWeight(value) {
    cementBagWeight.value = value;
  }

  void getOneCementBagPrice(value) {
    oneCementBagPrice.value = value;
  }

  void getCementBagNumbers(value) {
    cementBagNumbers.value = value;
  }

  void getThickOfWall(value) {
    thickCircleWall.value = value;

  }

  void calculateVolume() {
    double D = diaMeter.value; //2
    double DSquare = diaMeter.value*diaMeter.value; //2
    totalVolume.value=D-((thickCircleWall.value/12)+(thickCircleWall.value/12));
      totalVolume.value=totalVolume.value*totalVolume.value;
      totalVolume.value=((DSquare-totalVolume.value)*3.14159*heightCircleWall.value)/4;
      // totalVolume.value=3.14159*heightCircleWall.value*totalVolume.value;
      // totalVolume.value=totalVolume.value/4;
    totalVolume.value = (totalVolume.value - (doorArea.value*thickCircleWall.value))*cementBagNumbers.value;
  }

  void calculateVolumeMeters() {
    double D = diaMeter.value; //2
    double DSquare = diaMeter.value*diaMeter.value; //2
    totalVolume.value=D-((thickCircleWall.value/1000)+(thickCircleWall.value/1000));
    totalVolume.value=totalVolume.value*totalVolume.value;
    totalVolume.value=((DSquare-totalVolume.value)*3.14159*heightCircleWall.value)/4;
    // totalVolume.value=3.14159*heightCircleWall.value*totalVolume.value;
    // totalVolume.value=totalVolume.value/4;
    totalVolume.value = (totalVolume.value - (doorArea.value*thickCircleWall.value))*cementBagNumbers.value;
  }

  void calculateNumberOfBricks() {
    double denominator = lengthBrickDimension.value *
        widthBrickDimension.value *
        thickBrickDimension.value;
    numberOfBricks.value = (1 / denominator) * 0.95 * totalVolume.value;
    bricksCost.value = oneBrickPrice.value * numberOfBricks.value;
  }

  void calculateNumberOfBricksMeters() {
    double denominator = (lengthBrickDimension.value * 12) /
        1000 *
        (widthBrickDimension.value * 12) /
        1000 *
        (thickBrickDimension.value * 12) /
        1000;
    numberOfBricks.value = (1 / denominator) * totalVolume.value;
    bricksCost.value = oneBrickPrice.value * numberOfBricks.value;
  }

  void calculateCementBagsFeet() {
    double partOne = totalVolume.value * 0.3175 * mortarRatioCement.value;
    double sumOfMortars = mortarRatioCement.value + mortarRatioSand.value;

    totalCementBags.value =
        (partOne / sumOfMortars) ;
    totalCementBags.value=totalCementBags.value*40;
    totalCementBags.value=totalCementBags.value/cementBagWeight.value;
    cementCost.value = totalCementBags.value * oneCementBagPrice.value;
  }

  void calculateCementBagsMeters() {
    double partOne = totalVolume.value * 0.30 * mortarRatioCement.value;

    double sumOfMortars = mortarRatioCement.value + mortarRatioSand.value;

    totalCementBags.value =
        (partOne / sumOfMortars) * (1440 / cementBagWeight.value);

    cementCostMeters.value = totalCementBags.value * oneCementBagPrice.value;
  }

  void calculateSand() {
    totalSandVolume.value =
        (totalVolume.value * 0.3175 * mortarRatioSand.value) /
            (mortarRatioSand.value + mortarRatioCement.value);
  }

  void calculateSandMeters() {
    totalSandVolume.value = (totalVolume.value * 0.30 * mortarRatioSand.value) /
        (mortarRatioSand.value + mortarRatioCement.value);
  }
}
