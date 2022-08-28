import 'package:eventapp/registrationscreens/emaillogin.dart';
import 'package:flutter/material.dart';

import 'reusablewidgets.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Lets Get Started',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'find the right ticket and what you want \nonly in myticket',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Row(
                      children: const [
                        Icon(Icons.email_outlined, color: Colors.grey),
                        SizedBox(width: 60),
                        Text(
                          "Sign In Email",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmailLogin(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Or Use Instant Sign Up',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              const KSignupOptionsbutton(
                image: 'images/google.png',
                text: 'Sign Up with Google',
              ),
              const SizedBox(height: 20),
              const KSignupOptionsbutton(
                image: 'images/facebook.png',
                text: 'Sign Up with Facebook',
              ),
              const SizedBox(height: 30),
              const AlreadyAndDont(
                text1: 'Already have an account ? ',
                text2: 'Sign in',
              )
            ],
          ),
        ),
      ),
    );
  }
}
