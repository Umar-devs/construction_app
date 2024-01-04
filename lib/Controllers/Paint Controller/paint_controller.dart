import 'package:get/get.dart';

class PaintController extends GetxController {
  RxDouble length = 0.0.obs;
  RxDouble height = 0.0.obs;
  RxDouble quantity = 0.0.obs;
  RxDouble oneGallon = 0.0.obs;
  RxDouble oneGallonPrice = 0.0.obs;

  RxDouble totalArea = 0.0.obs;
  RxDouble totalRequiredPaintGallonsDryWall = 0.0.obs;
  RxDouble totalRequiredPaintGallonsWetWall = 0.0.obs;
  RxDouble totalRequiredPaintLittersDryWall = 0.0.obs;
  RxDouble totalRequiredPaintLittersWetWall = 0.0.obs;
  RxDouble totalPaintPriceDryWall = 0.0.obs;
  RxDouble totalPaintPriceWetWall = 0.0.obs;

  void getLength(value) {
    length.value = value;
  }

  void getHeight(value) {
    height.value = value;
  }

  void getQuantity(value) {
    quantity.value = value;
  }

  void getOneGallonPrice(value) {
    oneGallonPrice.value = value;
  }

  void getOneGallon(value) {
    oneGallon.value = value;
  }

  void dryWallCalculationsFeet() {
    totalArea.value = length.value * height.value * quantity.value;

    totalRequiredPaintLittersDryWall.value = totalArea.value * 0.019;

    totalRequiredPaintGallonsDryWall.value =
        totalRequiredPaintLittersDryWall.value / oneGallon.value;

    totalPaintPriceDryWall.value =
        totalRequiredPaintGallonsDryWall.value * oneGallonPrice.value;
  }

  void wetWallCalculationsFeet() {
    totalRequiredPaintLittersWetWall.value = totalArea.value * 0.011;

    totalRequiredPaintGallonsWetWall.value =
        totalRequiredPaintLittersWetWall.value / oneGallon.value;

    totalPaintPriceWetWall.value =
        totalRequiredPaintGallonsWetWall.value * oneGallonPrice.value;
  }

  void dryWallCalculationsMeters() {
    totalArea.value = length.value * height.value * quantity.value;

    totalRequiredPaintLittersDryWall.value = totalArea.value * 0.204;

    totalRequiredPaintGallonsDryWall.value =
        totalRequiredPaintLittersDryWall.value / oneGallon.value;

    totalPaintPriceDryWall.value =
        totalRequiredPaintGallonsDryWall.value * oneGallonPrice.value;
  }

  void wetWallCalculationsMeters() {
    totalRequiredPaintLittersWetWall.value = totalArea.value * 0.116;

    totalRequiredPaintGallonsWetWall.value =
        totalRequiredPaintLittersWetWall.value / oneGallon.value;

    totalPaintPriceWetWall.value =
        totalRequiredPaintGallonsWetWall.value * oneGallonPrice.value;
  }
}
