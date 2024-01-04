import 'package:flutter/material.dart';

import 'img_container.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      padEnds: true,
      controller: pageController,
      children: const [
        ImageContainer(imgPath: 'assets/images/Box 1.jpg'),
        ImageContainer(imgPath: 'assets/images/Box 2.jpg'),
        ImageContainer(imgPath: 'assets/images/Box 3.jpg'),
        ImageContainer(imgPath: 'assets/images/Box 4.jpg'),
        ImageContainer(imgPath: 'assets/images/Box 5.jpg'),
      ],
    );
  }
}
