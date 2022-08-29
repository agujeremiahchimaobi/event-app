import 'package:eventapp/registrationscreens/forgotpassword.dart';
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
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Create an Account',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              const KinputText(
                  hint: 'password', icon: Icons.lock_outline_rounded),
              const KinputText(
                  hint: 'example@gmail.com', icon: Icons.email_outlined),
              const KinputText(
                  hint: '************', icon: Icons.lock_outline_rounded),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword())),
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              const Kbutton(text: 'Sign Up'),
              const SizedBox(height: 20),
              const Text(
                'Or',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const KSignupOptionsbutton(
                  image: "images/google.png", text: 'Sign Up with Google'),
              const SizedBox(height: 20),
              const KSignupOptionsbutton(
                  image: "images/facebook.png", text: 'Sign Up with Facebook'),
              const SizedBox(height: 30),
              Text(
                'By signing up you accept the terms of \nservices, Guidelines and have read the privacy policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey.shade500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
