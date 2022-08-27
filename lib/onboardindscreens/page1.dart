import 'package:flutter/material.dart';

import 'reusablewidgets.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Heading(text: 'Find Best Event'),
        SizedBox(height: 30),
        Text(
          'Welcome to the place \nwhere you can find events near you. \nand yes you dont do the searching. we do ',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        OnboardButton(text: 'Next')
      ],
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
