import 'package:eventapp/registrationscreens/reusablewidgets.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20.0, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Create an Account'),
            KinputText(hint: 'password', icon: Icons.lock_outline_rounded),
            KinputText(hint: 'example@gmail.com', icon: Icons.email_outlined),
            KinputText(hint: '************', icon: Icons.lock_outline_rounded),
            Text('forgot password?'),
            Kbutton(
              text: 'Sign Up',
            )
          ],
        ),
      )),
    );
  }
}
