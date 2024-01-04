import 'package:get/get.dart';

class TilesController extends GetxController {
  RxDouble lengthInBedDimension = 0.0.obs;
  RxDouble widthInBedDimension = 0.0.obs;
  RxDouble quantity = 0.0.obs;
  RxDouble feetPrice = 0.0.obs;
  RxDouble metersPrice = 0.0.obs;
  RxDouble lengthInTileDimension = 0.0.obs;
  RxDouble widthInTileDimension = 0.0.obs;

  RxDouble totalArea = 0.0.obs;
  RxDouble numOfTiles = 0.0.obs;
  RxDouble tilesCostInSqFt = 0.0.obs;
  RxDouble tilesCostInSqM = 0.0.obs;

  void getLengthBedDimension(value) {
    lengthInBedDimension.value = value;
  }

  void getWidthBedDimension(value) {
    widthInBedDimension.value = value;
  }

  void getQuantity(value) {
    quantity.value = value;
  }

  void getSqFtPrice(value) {
    feetPrice.value = value;
  }

  void getSqMPrice(value) {
    metersPrice.value = value;
  }

  void getLengthTilesDimension(value) {
    lengthInTileDimension.value = value;
  }

  void getWidthTilesDimension(value) {
    widthInTileDimension.value = value;
  }

  void calculationsForFeet() {
    // Calculate the Total Area of Bathroom Bed in Square Feet:

    totalArea.value =
        lengthInBedDimension.value * widthInBedDimension.value * quantity.value;
    double totalAreaOfOneTileInFt =
        lengthInTileDimension.value * widthInTileDimension.value;
    // Calculate the Number of Tiles:
    numOfTiles.value = totalArea.value / totalAreaOfOneTileInFt;

    tilesCostInSqFt.value = totalArea.value * feetPrice.value;
    tilesCostInSqM.value = (totalArea.value /10.764)* metersPrice.value;
  }

  void calculationsForMeters() {
    // Calculate the Total Area of Bathroom Bed in Square Feet:

    totalArea.value =
        lengthInBedDimension.value * widthInBedDimension.value * quantity.value;
    double totalAreaOfOneTileInFt =
        (lengthInTileDimension.value/100) * (widthInTileDimension.value/100);
    // Calculate the Number of Tiles:
    numOfTiles.value = totalArea.value / totalAreaOfOneTileInFt;

    tilesCostInSqFt.value = (totalArea.value*10.764) * feetPrice.value;
    tilesCostInSqM.value = totalArea.value * metersPrice.value;
  }
}
