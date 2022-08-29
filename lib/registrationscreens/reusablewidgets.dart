import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KSignupOptionsbutton extends StatelessWidget {
  const KSignupOptionsbutton(
      {Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 2.0),
      ),
      child: Row(
        children: [
          Image.asset(image, height: 28),
          const SizedBox(width: 50),
          Text(
            text,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class KinputText extends StatelessWidget {
  const KinputText(
      {Key? key, required this.hint, required this.icon, this.suffixicon})
      : super(key: key);

  final IconData icon;
  final String hint;
  final IconData? suffixicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: TextField(
          cursorColor: Colors.grey.shade600,
          style: TextStyle(fontSize: 19, color: Colors.grey.shade600),
          decoration: InputDecoration(
            hintText: hint,
            // hintStyle: TextStyle(fontWeight: FontWeight.bold),
            prefixIcon: Icon(
              icon,
              size: 20,
              color: Colors.grey.shade600,
            ),
            suffixIcon: Icon(
              suffixicon,
              size: 20,
              color: Colors.grey.shade600,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class AlreadyAndDont extends StatelessWidget {
  const AlreadyAndDont(
      {Key? key, required this.text1, required this.text2, this.ontap})
      : super(key: key);

  final String text1;
  final String text2;
  final dynamic ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: const TextStyle(color: Colors.grey),
            ),
            TextSpan(
              text: text2,
              style: const TextStyle(
                color: Color(0xff1DB0B3),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Kbutton extends StatelessWidget {
  const Kbutton({Key? key, required this.text, this.ontap}) : super(key: key);

  final String text;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xff1DB0B3),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class KPreviousBtn extends StatelessWidget {
  const KPreviousBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey.shade500,
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class KOtpField extends StatelessWidget {
  const KOtpField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xff1DB0B3), width: 2)),
      height: 55,
      width: 60,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(border: InputBorder.none),
        style: const TextStyle(fontSize: 30, color: Color(0xff1DB0B3)),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
