import 'package:flutter/material.dart';
import '../../../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';



class ResultsRowPlaster extends StatelessWidget {
  const ResultsRowPlaster({super.key, required this.title, required this.result});
final String title;
final String result;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: screenHeight*0.01),
      child: SizedBox(
        width: screenWidth * 0.9,
        child: Row(
          children: [
            SizedBox(
              width: screenWidth * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableText(
                      title: title,
                      fontSize: screenWidth * 0.035,
                      weight: FontWeight.w700,
                      clr: Colors.white.withOpacity(0.9)),
                  ReusableText(
                      title: '=',
                      fontSize: screenWidth * 0.04,
                      weight: FontWeight.w700,
                      clr: Colors.white),
                ],
              ),
            ),
            SizedBox(width: screenWidth*0.09,),
            ReusableText(
                title: result,
                fontSize: screenWidth * 0.04,
                weight: FontWeight.w700,
                clr: Colors.white),
          ],
        ),
      ),
    );
  }
}
