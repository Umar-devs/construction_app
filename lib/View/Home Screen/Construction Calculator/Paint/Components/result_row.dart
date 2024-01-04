import 'package:flutter/material.dart';

import '../../../../../Constants/constants.dart';
import '../../../../Components/reusable_txt.dart';

Widget resultRow(bool feetScreen, String title, String result,String unit) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ReusableText(
          title: title,
          fontSize: screenWidth * 0.033,
          weight: FontWeight.w600,
          clr: Colors.white),
      ReusableText(
          title: '$result $unit',
          fontSize: screenWidth * 0.033,
          weight: FontWeight.w600,
          clr: Colors.white),

    ],
  );
}
