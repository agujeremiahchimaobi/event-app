import 'package:flutter/material.dart';

import 'reusablewidgets.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Heading(text: 'Schedule Event'),
          SizedBox(height: 30),
          Text(
            'Welcome to the place \nwhere you can find events near you. \nand yes you dont do the searching. we do ',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          OnboardButton(text: 'Next')
        ],
      ),
    );
  }
}
