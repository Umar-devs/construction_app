import 'package:get/get.dart';

class FlatConcreteController extends GetxController {
  RxDouble cement = 0.0.obs;
  RxDouble sand = 0.0.obs;
  RxDouble aggregate = 0.0.obs;
  RxDouble length = 0.0.obs;
  RxDouble width = 0.0.obs;
  RxDouble height = 0.0.obs;
  RxDouble oneCementBagPrice = 0.0.obs;
  RxDouble dryVolume = 0.0.obs;
  RxDouble oneCementBagWeight = 0.0.obs;
  RxDouble quantity = 0.0.obs;
  RxDouble concretePrice = 0.0.obs;

  RxDouble concreteVolume = 0.0.obs;
  RxDouble concreteCost = 0.0.obs;
  RxDouble cementBags = 0.0.obs;
  RxDouble cementCost = 0.0.obs;
  RxDouble sandCalculated = 0.0.obs;
  RxDouble aggregateCalculated = 0.0.obs;

  void getCement(value) {
    cement.value = value;
  }

  void getSand(value) {
    sand.value = value;
  }

  void getAggregate(value) {
    aggregate.value = value;
  }

  void getLength(value) {
    length.value = value;
  }

  void getWidth(value) {
    width.value = value;
  }

  void getHeight(value) {
    height.value = value;
  }

  void getOneCementBagPrice(value) {
    oneCementBagPrice.value = value;
  }

  void getDryVolume(value) {
    dryVolume.value = value;
  }

  void getOneCementBagWeight(value) {
    oneCementBagWeight.value = value;
  }

  void getQuantity(value) {
    quantity.value = value;
  }

  void getConcretePrice(value) {
    concretePrice.value = value;
  }

  void flatConcreteFeetCalculations() {
    concreteVolume.value = length.value * width.value * height.value*quantity.value;
    concreteCost.value = concreteVolume.value * concretePrice.value;
    double ratioCalculationsOverCement =
        cement.value / (cement.value + sand.value + aggregate.value);
    cementBags.value = concreteVolume.value *
        dryVolume.value *
        ratioCalculationsOverCement *
        40;
    cementBags.value = cementBags.value / oneCementBagWeight.value;
    cementCost.value = cementBags.value * oneCementBagPrice.value;
    double ratioCalculationsOverSand =
        sand.value / (cement.value + sand.value + aggregate.value);
    sandCalculated.value =
        concreteVolume.value * ratioCalculationsOverSand * dryVolume.value;
    double ratioCalculationsOverAggregate =
        aggregate.value / (cement.value + sand.value + aggregate.value);
    aggregateCalculated.value =
        concreteVolume.value * ratioCalculationsOverAggregate * dryVolume.value;
  }

  void flatConcreteMetersCalculations() {
    concreteVolume.value = length.value * width.value * height.value*quantity.value;
    concreteCost.value = concreteVolume.value * concretePrice.value;
    double ratioCalculationsOverCement =
        cement.value / (cement.value + sand.value + aggregate.value);
    cementBags.value = concreteVolume.value *
        dryVolume.value *
        ratioCalculationsOverCement *
        1440;
    cementBags.value = cementBags.value / oneCementBagWeight.value;
    cementCost.value = cementBags.value * oneCementBagPrice.value;
    double ratioCalculationsOverSand =
        sand.value / (cement.value + sand.value + aggregate.value);
    sandCalculated.value =
        concreteVolume.value * ratioCalculationsOverSand * dryVolume.value;
    double ratioCalculationsOverAggregate =
        aggregate.value / (cement.value + sand.value + aggregate.value);
    aggregateCalculated.value =
        concreteVolume.value * ratioCalculationsOverAggregate * dryVolume.value;
  }
}
