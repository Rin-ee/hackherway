import 'package:flut_maps/intro_screens/intro_page-3.dart';
import 'package:flut_maps/intro_screens/intro_page_1.dart';
import 'package:flut_maps/intro_screens/intro_page_2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flut_maps/MyHomePage.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);

              });

            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),

            ],
          ),
          Container(
            alignment: Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
          },

                  child: const Text('skip', style: TextStyle(color: Colors.white),),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                onLastPage
                    ?
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)
                        {
                          return const MyHomePage();
                        },
                        ),
                        );






                      },
                      child: const Text('done', style: TextStyle(color: Colors.white),),
                    )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn,
                          );

                        },
                        child: const Text('next', style: TextStyle(color: Colors.white),),

                ),

              ],
            ),
          )
        ],
      ),

      // body: PageView(
      //   children: [
      //     Container(
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     )
      //   ],
     // ),

    );
  }
}
