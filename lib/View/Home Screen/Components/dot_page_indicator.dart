import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotPageIndicator extends StatelessWidget {
  const DotPageIndicator({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 5,
      onDotClicked: (index) {
        pageController.jumpToPage(index);
      },
      effect: const JumpingDotEffect(
        dotColor: Colors.white70,
        activeDotColor: Colors.blue,
        dotHeight: 12,
        dotWidth: 12,
        verticalOffset: 20,
      ),
    );
  }
}
