import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class IntroPage3 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blue[900],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Center the content vertically
          children: [
            Lottie.network(
              'https://lottie.host/b3d4ebc0-018e-454f-82d6-10cc72bba6bf/ybcbIKgGdm.json',
              // Path to your image asset
              width: 100, // Set the width of the image
              height: 100, // Set the height of the image
            ),
            const SizedBox(height: 20),
            // Add some space between the image and text
            const Text(
              'With Love',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text('Hack Her Way', style: TextStyle(
                color: Colors.white),),
          ],
        ),
      ),
    );
  }
}