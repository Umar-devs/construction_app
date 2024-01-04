// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../Constants/constants.dart';
// import '../../Components/custom_scaffold.dart';
// import 'Blocks/blocks.dart';
// import 'Bricks/Bricks Unit/bricks_unit.dart';
// import 'Concrete/Concrete Unit/concrete_unit.dart';
// import 'Paint/paint.dart';
// import 'Plaster/plaster.dart';
// import 'RCC Slab Concrete/rcc_slab_concrete.dart';
// import 'Steel Slab/steel_slab.dart';
// import 'Tiles/tiles.dart';
//
// class ConstructionCalculator extends StatelessWidget {
//   ConstructionCalculator({super.key});
//   final List<String> imagesPaths = [
//     'assets/images/concrete.jpg',
//     'assets/images/bricks.jpg',
//     'assets/images/tiles.jpg',
//     'assets/images/plaster.jpg',
//     'assets/images/blocks.jpg',
//     'assets/images/steel slab.jpg',
//     // 'assets/images/steel.jpg',
//     'assets/images/paint.jpg',
//     'assets/images/RCC Slab Concrete.jpg',
//     // 'assets/images/areas.jpg',
//     // 'assets/images/unit converter.jpg',
//   ];
//   final List<Widget> _widgetOptions = [
//     const ConcreteUnit(),
//     const BricksUnit(),
//     const Tiles(),
//     const PlasterScreen(),
//     const Blocks(),
//     const SteelSlabs(),
//     // const Steel(),
//     const PaintScreen(),
//     const RCCSlabScreen(),
//     // const Area(),
//     // const UnitConverter(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: const Icon(Icons.arrow_back),
//         ),
//         backgroundColor: const Color(0xff0081EE),
//         title: const Text(
//           'Construction Calculator',
//         ),
//       ),
//       body: SizedBox(
//         height: screenHeight,
//         width: screenWidth,
//         child: GridView.count(
//           scrollDirection: Axis.vertical,
//           physics: const ClampingScrollPhysics(),
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           crossAxisCount: 2,
//           children: List.generate(
//               imagesPaths.length,
//                   (index) => FutureBuilder(
//                 builder: (context, snapshot) {
//                   return snapshot.connectionState ==
//                       ConnectionState.waiting
//                       ? const CircularProgressIndicator(
//                     color: Colors.white,
//                   )
//                       : GestureDetector(
//                     onTap: () {
//                       Get.to(()=>_widgetOptions[index],
//                           duration:
//                           const Duration(milliseconds: 400),
//                           transition: Transition.fadeIn);
//                     },
//                     child: Container(
//                       height: screenHeight * 0.1,
//                       width: screenWidth * 0.1,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(
//                                 imagesPaths[index],
//                               ),
//                               fit: BoxFit.cover)),
//                     ),
//                   );
//                 },
//                 future: null,
//               )),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/constants.dart';
import 'Blocks/blocks.dart';
import 'Bricks/Bricks Unit/bricks_unit.dart';
import 'Concrete/Concrete Unit/concrete_unit.dart';
import 'Paint/paint.dart';
import 'Plaster/plaster.dart';
import 'RCC Slab Concrete/rcc_slab_concrete.dart';
import 'Steel Slab/steel_slab.dart';
import 'Tiles/tiles.dart';

class ConstructionCalculator extends StatelessWidget {
  ConstructionCalculator({super.key});

  final List<String> imagesPaths = [
    'assets/images/concrete.jpg',
    'assets/images/bricks.jpg',
    'assets/images/tiles.jpg',
    'assets/images/plaster.jpg',
    'assets/images/blocks.jpg',
    'assets/images/steel slab.png',
    'assets/images/paint.png',
    'assets/images/RCC Slab Concrete.jpg',
  ];

  final List<Widget> _widgetOptions = [
    const ConcreteUnit(),
    const BricksUnit(),
    const Tiles(),
    const PlasterScreen(),
    const Blocks(),
    const SteelSlabs(),
    const PaintScreen(),
    const RCCSlabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Text(''),
        backgroundColor: const Color(0xff0081EE),
        title: const Text(
          'Construction Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
          ),
        ),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(
          8,
          (index) => GestureDetector(
            onTap: () {
              Get.to(() => _widgetOptions[index],
                  duration: const Duration(milliseconds: 400),
                  transition: Transition.fadeIn);
            },
            child: Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagesPaths[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
