import 'package:eventapp/registrationscreens/getstarted.dart';
import 'package:flutter/material.dart';

import 'reusablewidgets.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key, this.ontap}) : super(key: key);

  final dynamic ontap;
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
          GestureDetector(
            onTap: ontap,
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff1DB0B3),
              ),
              child: const Center(
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
