import 'package:get/get.dart';

class BrickVolumeController extends GetxController {
  RxDouble totalVolume = 0.0.obs;
  RxDouble length = 0.0.obs;
  RxDouble width = 0.0.obs;
  RxDouble thick = 0.0.obs;
  RxDouble oneBrickPrice = 0.0.obs;
  RxDouble oneCementBagWeight = 0.0.obs;
  RxDouble numOfBags = 0.0.obs;
  RxDouble mortarRatioCement = 0.0.obs;
  RxDouble mortarRatioSand = 0.0.obs;
  RxDouble oneCementBagPrice = 0.0.obs;

  RxDouble brickCost = 0.0.obs;
  RxDouble cementBags = 0.0.obs;
  RxDouble cementCost = 0.0.obs;
  RxDouble sand = 0.0.obs;
  RxDouble numberOfBricks = 0.0.obs;

  void getVolume(value) {
    totalVolume.value = value;
  }

  void getLength(value) {
    length.value = value / 12;
  }

  void getWidth(value) {
    width.value = value / 12;
  }

  void getThick(value) {
    thick.value = value / 12;
  }

  void getOneBrickPrice(value) {
    oneBrickPrice.value = value;
  }

  void getOneCementBagWeight(value) {
    oneCementBagWeight.value = value;
  }

  void getNumberOfBags(value) {
    numOfBags.value = value;
  }

  void getMortarRatioCement(value) {
    mortarRatioCement.value = value;
  }

  void getMortarRatioSand(value) {
    mortarRatioSand.value = value;
  }

  void getOneCementBag(value) {
    oneCementBagPrice.value = value;
  }

  void calculateNumberOfBricks() {
    double denominator = length.value * width.value * thick.value;
    numberOfBricks.value = (1 / denominator) * 0.95 * totalVolume.value*numOfBags.value;
    brickCost.value = oneBrickPrice.value * numberOfBricks.value;
  }

  void calculateNumberOfBricksMeters() {
    double denominator = (length.value * 12) /
        1000 *
        (width.value * 12) /
        1000 *
        (thick.value * 12) /
        1000;
    numberOfBricks.value = (1 / denominator) * totalVolume.value*numOfBags.value;
    brickCost.value = oneBrickPrice.value * numberOfBricks.value;
  }

  void calculateCementBagsFeet() {
    double partOne = totalVolume.value * 0.3175 * mortarRatioCement.value;
    double sumOfMortars = mortarRatioCement.value + mortarRatioSand.value;

    cementBags.value =
        (partOne / sumOfMortars) * (40 / oneCementBagWeight.value)*numOfBags.value;
    cementCost.value = cementBags.value * oneCementBagPrice.value;
  }

  void calculateCementBagsMeters() {
    double partOne = totalVolume.value * 0.30 * mortarRatioCement.value;

    double sumOfMortars = mortarRatioCement.value + mortarRatioSand.value;

    cementBags.value =
        (partOne / sumOfMortars) * (1440 / oneCementBagWeight.value)*numOfBags.value;

    cementCost.value = cementBags.value * oneCementBagPrice.value;
  }

  void calculateSand() {
    sand.value = (totalVolume.value * 0.3175 * mortarRatioSand.value) /
        (mortarRatioSand.value + mortarRatioCement.value)*numOfBags.value;
  }

  void calculateSandMeters() {
    sand.value = (totalVolume.value * 0.30 * mortarRatioSand.value) /
        (mortarRatioSand.value + mortarRatioCement.value)*numOfBags.value;
  }
  void changeVolume(){
    totalVolume.value=totalVolume.value*numOfBags.value;
  }
}
