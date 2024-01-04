import 'package:get/get.dart';

class SlabSteelController extends GetxController {
  RxDouble length = 0.0.obs;
  RxDouble width = 0.0.obs;
  RxDouble diameter = 0.0.obs;
  RxDouble longBar = 0.0.obs;
  RxDouble shortBar = 0.0.obs;
  RxDouble quantity = 0.0.obs;
  RxDouble oneKgPrice = 0.0.obs;

  RxDouble totalArea = 0.0.obs;
  RxDouble totalRequiredSteelInKgFeet = 0.0.obs;
  RxDouble totalRequiredSteelInKgMeters = 0.0.obs;
  RxDouble totalRequiredSteelInTon = 0.0.obs;
  RxDouble totalRequiredSteelCost = 0.0.obs;
  RxDouble totalRequiredPiecesForLongBar = 0.0.obs;
  RxDouble totalRequiredPiecesForShortBar = 0.0.obs;
  RxDouble shortBarPieceLength = 0.0.obs;
  RxDouble longBarPieceLength = 0.0.obs;

  void getLength(value) {
    length.value = value;
  }

  void getWidth(value) {
    width.value = value;
  }

  void getDiameter(value) {
    diameter.value = value;
  }

  void getLongBar(value) {
    longBar.value = value;
  }

  void getShortBar(value) {
    shortBar.value = value;
  }

  void getQuantity(value) {
    quantity.value = value;
  }

  void getOneKgPrice(value) {
    oneKgPrice.value = value;
  }

  void calculationsForSlabSteelFeet() {
    totalArea.value = length.value * width.value* quantity.value;

    totalRequiredPiecesForLongBar.value =
        (((length.value * 12) / longBar.value) + 1)*quantity.value;
    totalRequiredPiecesForShortBar.value =
        (((width.value * 12) / shortBar.value) + 1)*quantity.value;
    longBarPieceLength.value = length.value * quantity.value;

    shortBarPieceLength.value = width.value * quantity.value;

    double sumOfBars = (totalRequiredPiecesForLongBar.value * length.value) +
        (totalRequiredPiecesForShortBar.value * width.value);
    totalRequiredSteelInKgFeet.value =
    ((diameter.value * diameter.value) * (sumOfBars / 53)*quantity.value);


    totalRequiredSteelInTon.value = totalRequiredSteelInKgFeet.value / 1000;

    totalRequiredSteelCost.value =
        totalRequiredSteelInKgFeet.value * oneKgPrice.value;
  }

  void calculationsForSlabSteelMeters() {
    totalArea.value = length.value * width.value * quantity.value;

    totalRequiredPiecesForLongBar.value =
        (((length.value * 1000) / longBar.value) + 1)*quantity.value;
    totalRequiredPiecesForShortBar.value =
        (((width.value * 1000) / shortBar.value) + 1)*quantity.value;
    longBarPieceLength.value = length.value * quantity.value;

    shortBarPieceLength.value = width.value * quantity.value;
    double sumOfBars = (totalRequiredPiecesForLongBar.value * length.value) +
        (totalRequiredPiecesForShortBar.value * width.value);
    totalRequiredSteelInKgMeters.value =
    ((diameter.value * diameter.value) * (sumOfBars / 162)*quantity.value);

    totalRequiredSteelInTon.value = totalRequiredSteelInKgMeters.value / 1000;

    totalRequiredSteelCost.value =
        totalRequiredSteelInKgMeters.value * oneKgPrice.value;
  }
}
