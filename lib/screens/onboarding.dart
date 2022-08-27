import 'package:eventapp/onboardindscreens/page1.dart';
import 'package:eventapp/onboardindscreens/page2.dart';
import 'package:eventapp/onboardindscreens/page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: const Color(0xffBEC0C7),
      body: Column(
        children: [
          Container(
            height: 320,
            padding: const EdgeInsets.only(top: 50),
            margin: const EdgeInsets.only(top: 500),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 230,
                  child: PageView(
                    controller: _controller,
                    children: const [Page1(), Page2(), Page3()],
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      activeDotColor: Color(0xff1DB0B3),
                      dotColor: Color(0xff67DFE1),
                      dotHeight: 10,
                      dotWidth: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
