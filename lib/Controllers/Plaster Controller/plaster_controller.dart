import 'package:get/get.dart';

class PlasterController extends GetxController {
  RxDouble cement = 0.0.obs;
  RxDouble sand = 0.0.obs;
  RxDouble length = 0.0.obs;
  RxDouble height = 0.0.obs;
  RxDouble thickness = 0.0.obs;
  RxDouble oneCementBagPrice = 0.0.obs;
  RxDouble dryVolume = 0.0.obs;
  RxDouble oneCementBag = 0.0.obs;
  RxDouble quantity = 0.0.obs;
  RxDouble plasterPrice = 0.0.obs;

  RxDouble plasterArea = 0.0.obs;
  RxDouble plasterCost = 0.0.obs;
  RxDouble cementBags = 0.0.obs;
  RxDouble cementCost = 0.0.obs;
  RxDouble sandCalculate = 0.0.obs;

  void getCement(value) {
    cement.value = value;
  }

  void getSand(value) {
    sand.value = value;
  }

  void getLength(value) {
    length.value = value;
  }

  void getHeight(value) {
    height.value = value;
  }

  void getThickness(value) {
    thickness.value = value;
  }

  void getOneCementBagPrice(value) {
    oneCementBagPrice.value = value;
  }

  void getDryVolume(value) {
    dryVolume.value = value;
  }

  void getOneCementBagWeight(value) {
    oneCementBag.value = value;
  }

  void getQuantity(value) {
    quantity.value = value;
  }

  void getPlasterPrice(value) {
    plasterPrice.value = value;
  }

  void calculationsForFeetScreen() {
    plasterArea.value = length.value * height.value*quantity.value;
    plasterCost.value = plasterArea.value * plasterPrice.value;
    double volumeOfWall = length.value * height.value * (thickness.value / 12);
  cementBags.value=(volumeOfWall*dryVolume.value*cement.value)/(cement.value+sand.value);
  cementBags.value=(cementBags.value*62.5)/oneCementBag.value*quantity.value;
    cementCost.value = cementBags.value * oneCementBagPrice.value;
    sandCalculate.value=(volumeOfWall*dryVolume.value*sand.value)/(cement.value+sand.value)*quantity.value;
  }

  void calculationsForMetersScreen() {
    plasterArea.value = length.value * height.value*quantity.value;
    plasterCost.value = plasterArea.value * plasterPrice.value;
    double volumeOfWall = length.value * height.value * (thickness.value / 1000);
    cementBags.value=(volumeOfWall*dryVolume.value*cement.value)/(cement.value+sand.value);
    cementBags.value=(cementBags.value*1440)/oneCementBag.value*quantity.value;
    cementCost.value = cementBags.value * oneCementBagPrice.value;
    sandCalculate.value=(volumeOfWall*dryVolume.value*sand.value)/(cement.value+sand.value)*quantity.value;
  }
}
