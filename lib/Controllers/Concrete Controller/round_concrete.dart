import 'package:get/get.dart';

class RoundConcreteController extends GetxController{
  RxDouble cement = 0.0.obs;
  RxDouble sand = 0.0.obs;
  RxDouble aggregate = 0.0.obs;
  RxDouble diameter = 0.0.obs;
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

  void getDia(value) {
    diameter.value = value;
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

  void calculateRoundFeetValues(){
    double d=diameter.value/2;
    concreteVolume.value=3.14159*(d*d)*height.value*quantity.value;
    concreteCost.value=concreteVolume.value*concretePrice.value;
    double ratioCalculationsOverCement=cement.value/(cement.value+sand.value+aggregate.value);
    cementBags.value=(concreteVolume.value*dryVolume.value*ratioCalculationsOverCement*40)/oneCementBagWeight.value;
    cementCost.value=cementBags.value*oneCementBagPrice.value;
    double ratioCalculationsOverSand=sand.value/(cement.value+sand.value+aggregate.value);
    sandCalculated.value=concreteVolume.value*dryVolume.value*ratioCalculationsOverSand;
    double ratioCalculationsOverAggregate=aggregate.value/(cement.value+sand.value+aggregate.value);

    aggregateCalculated.value=concreteVolume.value*dryVolume.value*ratioCalculationsOverAggregate;
  }  void calculateRoundMetersValues(){
    double d=diameter.value/2;
    concreteVolume.value=3.14159*(d*d)*height.value*quantity.value;
    concreteCost.value=concreteVolume.value*concretePrice.value;
    double ratioCalculationsOverCement=cement.value/(cement.value+sand.value+aggregate.value);
    cementBags.value=(concreteVolume.value*dryVolume.value*ratioCalculationsOverCement*1440)/oneCementBagWeight.value;
    cementCost.value=cementBags.value*oneCementBagPrice.value;
    double ratioCalculationsOverSand=sand.value/(cement.value+sand.value+aggregate.value);
    sandCalculated.value=concreteVolume.value*dryVolume.value*ratioCalculationsOverSand;
    double ratioCalculationsOverAggregate=aggregate.value/(cement.value+sand.value+aggregate.value);

    aggregateCalculated.value=concreteVolume.value*dryVolume.value*ratioCalculationsOverAggregate;
  }
}