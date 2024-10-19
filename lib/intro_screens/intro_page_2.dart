import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class IntroPage2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Center the content vertically
          children: [
            Lottie.network(
              'https://lottie.host/74c13ab6-7cfa-4651-ad85-5eda0d9315be/UBmU7xAULt.json',
              // Path to your image asset
              width: 100, // Set the width of the image
              height: 100, // Set the height of the image
            ),
            const SizedBox(height: 20),
            // Add some space between the image and text
            const Text(
              'Welcome to our app',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text('This is the frontend for the 3rd problem statement', style: TextStyle(
                color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
