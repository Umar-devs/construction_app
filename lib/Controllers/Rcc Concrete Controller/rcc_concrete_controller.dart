import 'package:get/get.dart';

class RccSlabConcreteController extends GetxController {
  RxDouble length = 0.0.obs;
  RxDouble width = 0.0.obs;
  RxDouble slabThick = 0.0.obs;
  RxDouble cementRatio = 0.0.obs;
  RxDouble sandRatio = 0.0.obs;
  RxDouble aggregateRatio = 0.0.obs;
  RxDouble dryVolume = 0.0.obs;
  RxDouble cementBagWeight = 0.0.obs;
  RxDouble longBarL = 0.0.obs;
  RxDouble shortBars = 0.0.obs;
  RxDouble steelPrice = 0.0.obs;
  RxDouble sBarSteelDia = 0.0.obs;
  RxDouble lBarSteelDia = 0.0.obs;
  RxDouble singleOrDoubleSteelNet = 0.0.obs;
  RxDouble cementBagPrice = 0.0.obs;

  RxDouble totalSlabArea = 0.0.obs;
  RxDouble totalRequiredSteelKg = 0.0.obs;
  RxDouble totalRequiredSteelTon = 0.0.obs;
  RxDouble totalRequiredSteelCost = 0.0.obs;
  RxDouble reqPiecesForLongBar = 0.0.obs;
  RxDouble reqPiecesForShortBar = 0.0.obs;
  RxDouble shortBarPieceLength = 0.0.obs;
  RxDouble longBarPieceLength = 0.0.obs;
  RxDouble totalSlabVolume = 0.0.obs;
  RxDouble totalCementBag = 0.0.obs;
  RxDouble totalCementCost = 0.0.obs;
  RxDouble totalAggregate = 0.0.obs;
  RxDouble totalSand = 0.0.obs;

  void getLength(value) {
    length.value = value;
  }

  void getWidth(value) {
    width.value = value;
  }

  void getSlabThick(value) {
    slabThick.value = value;
  }

  void getCementRatio(value) {
    cementRatio.value = value;
  }

  void getSandRatio(value) {
    sandRatio.value = value;
  }

  void getAggregateRatio(value) {
    aggregateRatio.value = value;
  }

  void getDryVolume(value) {
    dryVolume.value = value;
  }

  void getCementBagWeight(value) {
    cementBagWeight.value = value;
  }

  void getLongBarL(value) {
    longBarL.value = value;
  }

  void getShortBarS(value) {
    shortBars.value = value;
  }

  void getSteelOneKgPrice(value) {
    steelPrice.value = value;
  }

  void getSBarSteelDia(value) {
    sBarSteelDia.value = value;
  }

  void getLBarSteelDia(value) {
    lBarSteelDia.value = value;
  }

  void getSteelNet(value) {
    singleOrDoubleSteelNet.value = value;
  }

  void getOneCementBagPrice(value) {
    cementBagPrice.value = value;
  }

  void calculationsFeetScreen() {
    totalSlabArea.value = length.value * width.value;
    reqPiecesForLongBar.value = (length.value * 12) / longBarL.value;
    reqPiecesForLongBar.value = reqPiecesForLongBar.value + 1;
    reqPiecesForShortBar.value = (width.value * 12) / shortBars.value;
    reqPiecesForShortBar.value = reqPiecesForShortBar.value + 1;

    totalRequiredSteelKg.value = (lBarSteelDia.value * lBarSteelDia.value) *
        ((reqPiecesForLongBar.value / 53));
    totalRequiredSteelKg.value = totalRequiredSteelKg.value +
        ((sBarSteelDia.value * sBarSteelDia.value) *
            (reqPiecesForShortBar.value / 53));
    totalRequiredSteelTon.value = totalRequiredSteelKg.value / 1000;
    totalRequiredSteelCost.value =
        totalRequiredSteelKg.value * steelPrice.value;
    longBarPieceLength.value = length.value * singleOrDoubleSteelNet.value;
    shortBarPieceLength.value = width.value * singleOrDoubleSteelNet.value;
    totalSlabVolume.value = length.value * width.value * slabThick.value;
    totalCementBag.value = totalSlabVolume.value *
        dryVolume.value *
        (cementRatio.value /
            (cementRatio.value + sandRatio.value + aggregateRatio.value))*40;
    totalCementBag.value = totalCementBag.value / cementBagWeight.value;
    totalCementCost.value = totalCementBag.value * cementBagPrice.value;
    totalSand.value = totalSlabVolume.value *
        dryVolume.value *
        (sandRatio.value /
            (cementRatio.value + sandRatio.value + aggregateRatio.value));
    totalAggregate.value = totalSlabVolume.value *
        dryVolume.value *
        (aggregateRatio.value /
            (cementRatio.value + sandRatio.value + aggregateRatio.value));
  }
  void calculationsMeterScreen() {
    totalSlabArea.value = length.value * width.value;
    reqPiecesForLongBar.value = (length.value * 1000) / longBarL.value;
    reqPiecesForLongBar.value = reqPiecesForLongBar.value + 1;
    reqPiecesForShortBar.value = (width.value * 1000) / shortBars.value;
    reqPiecesForShortBar.value = reqPiecesForShortBar.value + 1;

    totalRequiredSteelKg.value = (lBarSteelDia.value * lBarSteelDia.value) *
        ((reqPiecesForLongBar.value / 162));
    totalRequiredSteelKg.value = totalRequiredSteelKg.value +
        ((sBarSteelDia.value * sBarSteelDia.value) *
            (reqPiecesForShortBar.value / 162));
    totalRequiredSteelTon.value = totalRequiredSteelKg.value / 1000;
    totalRequiredSteelCost.value =
        totalRequiredSteelKg.value * steelPrice.value;
    longBarPieceLength.value = length.value * singleOrDoubleSteelNet.value;
    shortBarPieceLength.value = width.value * singleOrDoubleSteelNet.value;
    totalSlabVolume.value = length.value * width.value * slabThick.value;
    totalCementBag.value = totalSlabVolume.value *
        dryVolume.value *
        (cementRatio.value /
            (cementRatio.value + sandRatio.value + aggregateRatio.value)*1440);
    totalCementBag.value = totalCementBag.value / cementBagWeight.value;
    totalCementCost.value = totalCementBag.value * cementBagPrice.value;
    totalSand.value = totalSlabVolume.value *
        dryVolume.value *
        (sandRatio.value /
            (cementRatio.value + sandRatio.value + aggregateRatio.value));
    totalAggregate.value = totalSlabVolume.value *
        dryVolume.value *
        (aggregateRatio.value /
            (cementRatio.value + sandRatio.value + aggregateRatio.value));
  }
}
