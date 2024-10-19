import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flut_maps/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AnimatedSplashScreen(splash: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
        child: Center(
          child: LottieBuilder.asset("assets/lottie/pleaseplase.json",
            width: screenWidth,              // Set the width to the screen width
            height: screenHeight,            // Set the height to the screen height
            fit: BoxFit.cover,),
        )
    )
      ],
    ), nextScreen: const MyHomePage(),
      splashIconSize: MediaQuery.of(context).size.width,
      backgroundColor: Colors.black,);

  }
}