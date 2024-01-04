import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key,  this.clr=Colors.white24});
final Color clr;
  @override
  Widget build(BuildContext context) {
    return  Divider(
      height: 1,
      color: clr,
      indent: screenWidth * 0.05,
      endIndent: screenWidth * 0.0,
    );
  }
}
