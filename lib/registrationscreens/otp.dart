import 'package:eventapp/registrationscreens/reusablewidgets.dart';
import 'package:eventapp/registrationscreens/success.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
                'Verify Code',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                'The confirmation code was \nsent via email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(height: 30),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    KOtpField(),
                    KOtpField(),
                    KOtpField(),
                    KOtpField(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Forgot Password?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Kbutton(
                text: 'Reset Password',
                ontap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Success(),
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
