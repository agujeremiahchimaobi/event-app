import 'package:eventapp/registrationscreens/getstarted.dart';
import 'package:flutter/material.dart';

import 'reusablewidgets.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Heading(text: 'Remember your event'),
          const SizedBox(height: 30),
          const Text(
            'Welcome to the place \nwhere you can find events near you. \nand yes you dont do the searching. we do ',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          OnboardButton(
            text: 'Get Started',
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GetStarted(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
