import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {super.key, required this.scaffoldChild, required this.title});
  final Widget scaffoldChild;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff0081EE),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 21,
          ),
        ),
      ),
      body: scaffoldChild,
    );
  }
}
