import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  final VoidCallback onNavigation;

  const SplashScreen({Key? key, required this.onNavigation}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Completer<void> _completer = Completer<void>();

  bool _isDisposed = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_isDisposed) {
        if (kDebugMode) {
          print("SplashScreen post frame callback executed");
        }
        Future.delayed(const Duration(seconds: 1), () {
          if (!_isDisposed) {
            if (kDebugMode) {
              print("Invoking onNavigation callback");
            }
            widget.onNavigation();
          }
        }).then((_) {
          if (!_completer.isCompleted) {
            _completer.complete();
          }
        });
      }
    });

    return Container(
      height: screenHeight,
      width: screenWidth,
      color: const Color(0xff007deb),
      child: Image.asset(
        'assets/images/al_syed-construction-logo (1).png',
        height: screenHeight * 0.1,
      ),
    );
  }

  @override
  void dispose() {
    // Set _isDisposed to true to prevent completing the future when disposed
    _isDisposed = true;
    super.dispose();
  }
}
