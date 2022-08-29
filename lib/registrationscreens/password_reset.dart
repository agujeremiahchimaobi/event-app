import 'package:eventapp/registrationscreens/otp.dart';
import 'package:eventapp/registrationscreens/reusablewidgets.dart';
import 'package:flutter/material.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              const KPreviousBtn(),
              const SizedBox(height: 200),
              const Text(
                'New Password',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                'Create your new password to Log In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(height: 20),
              const KinputText(
                hint: 'New Password',
                icon: Icons.lock_outline_rounded,
                suffixicon: Icons.visibility_outlined,
              ),
              const SizedBox(height: 10),
              const KinputText(
                hint: 'Confirm New Password',
                icon: Icons.lock_outline_rounded,
                suffixicon: Icons.visibility_outlined,
              ),
              const SizedBox(height: 30),
              Kbutton(
                text: 'Reset Password',
                ontap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtpVerification(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
