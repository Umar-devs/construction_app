import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';


class TitleBoxWithImage extends StatelessWidget {
  const TitleBoxWithImage(
      {super.key, required this.imgPath, required this.title});
  final String imgPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.16,
      width: screenWidth * 0.9,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: screenHeight * 0.12,
              width: screenWidth * 0.35,
              child: Image.asset(
                imgPath,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.05,
          ),
          ReusableText(
              title: title,
              fontSize: screenWidth * 0.04,
              weight: FontWeight.w600,
              clr: Colors.white)
        ],
      ),
    );
  }
}
