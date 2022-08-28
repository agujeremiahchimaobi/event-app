import 'package:eventapp/registrationscreens/reusablewidgets.dart';
import 'package:eventapp/registrationscreens/signupscreen.dart';
import 'package:flutter/material.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<EmailLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 130.0),
                const Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                const Text("Welcome back you've been \nmissed",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                const SizedBox(height: 20.0),
                const KinputText(icon: Icons.email_outlined, hint: 'Email'),
                const SizedBox(height: 20.0),
                const KinputText(
                    icon: Icons.lock_outline_rounded, hint: 'Password'),
                const SizedBox(height: 30.0),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30.0),
                const Kbutton(
                  text: 'Sign In',
                ),
                const SizedBox(height: 20.0),
                const Text('Or', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 20.0),
                const KSignupOptionsbutton(
                    image: 'images/google.png', text: 'Sign In With Google'),
                const SizedBox(height: 20.0),
                const KSignupOptionsbutton(
                    image: 'images/facebook.png',
                    text: 'Sign In With Facebook'),
                const SizedBox(height: 40.0),
                AlreadyAndDont(
                    ontap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        ),
                    text1: 'Dont have an Account ? ',
                    text2: 'Sign Up'),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
