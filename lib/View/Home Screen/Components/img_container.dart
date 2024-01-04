import 'package:flutter/material.dart';

import '../../../Constants/constants.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key, required this.imgPath}) : super(key: key);
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: screenHeight * 0.05,
          left: screenWidth * 0.06,
          right: screenWidth * 0.07),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill)),
      ),
    );
  }
}
