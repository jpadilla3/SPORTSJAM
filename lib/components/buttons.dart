import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget signUpButton(context) {
  return SizedBox(
    height: 60,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, foregroundColor: Colors.white),
        onPressed: () {},
        child: const Text(
          'SIGN UP',
        )),
  );
}

Widget googleButton() {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: [
        Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const FaIcon(
              FontAwesomeIcons.google,
              color: Colors.white,
            )),
        const Text('Google')
      ],
    ),
  );
}

Widget facebookButton() {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: [
        Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: const FaIcon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
            )),
        const Text('Facebook')
      ],
    ),
  );
}

Widget twitterButton() {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: [
        Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue[400],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: FaIcon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
            )),
        const Text('Twitter')
      ],
    ),
  );
}
