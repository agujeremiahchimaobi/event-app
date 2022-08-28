import 'package:eventapp/registrationscreens/reusablewidgets.dart';
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
              children: const [
                SizedBox(height: 150.0),
                Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Text("Welcome back you've been \nmissed",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                SizedBox(height: 20.0),
                KinputText(icon: Icons.email_outlined, hint: 'Email'),
                SizedBox(height: 20.0),
                KinputText(icon: Icons.lock_outline_rounded, hint: 'Password'),
                SizedBox(height: 30.0),
                Text('forgot Password?'),
                SizedBox(height: 30.0),
                Kbutton(
                  text: 'Sign In',
                ),
                SizedBox(height: 20.0),
                Text('Or'),
                SizedBox(height: 20.0),
                KSignupOptionsbutton(
                    image: 'images/google.png', text: 'Sign In With Google'),
                SizedBox(height: 20.0),
                KSignupOptionsbutton(
                    image: 'images/facebook.png',
                    text: 'Sign In With Facebook'),
                SizedBox(height: 40.0),
                AlreadyAndDont(
                    text1: 'Dont have an Account ? ', text2: 'Sign Up'),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
