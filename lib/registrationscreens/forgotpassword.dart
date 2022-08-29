import 'package:eventapp/registrationscreens/password_reset.dart';
import 'package:eventapp/registrationscreens/reusablewidgets.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            children: [
              KPreviousBtn(),
              const SizedBox(height: 200),
              const Text(
                'Forgotten password?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Type your email, we will send you \nverification code via email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(height: 20),
              const KinputText(
                  hint: 'example@gmail.com', icon: Icons.email_outlined),
              const SizedBox(height: 30),
              Kbutton(
                text: 'Sign In',
                ontap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PasswordReset(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
