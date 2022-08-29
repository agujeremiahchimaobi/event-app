import 'package:eventapp/registrationscreens/emaillogin.dart';
import 'package:eventapp/registrationscreens/reusablewidgets.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              children: [
                const SizedBox(height: 70),
                const Text(
                  'Successfully \nRegistered',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'Congratulations your account \nis already registered in this application',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 17),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                  ),
                  child: Kbutton(
                    text: 'Back',
                    ontap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EmailLogin(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
