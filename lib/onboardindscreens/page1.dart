import 'package:flutter/material.dart';

import 'reusablewidgets.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Heading(text: 'Find Best Event'),
        const SizedBox(height: 30),
        const Text(
          'Welcome to the place \nwhere you can find events near you. \nand yes you dont do the searching. we do ',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        OnboardButton(
          text: 'Next',
          ontap: () {
            _controller.nextPage(
                duration: Duration(milliseconds: 1000), curve: Curves.ease);
          },
        )
      ],
    );
  }
}
