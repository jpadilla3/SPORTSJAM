import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sportsjam/components/navbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(milliseconds: 7500);
    return Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 500),
            child: const NavBar()));
  }

  titleStyle() {
    return const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontStyle: FontStyle.italic,
        fontSize: 35);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'S',
                  style: titleStyle(),
                ),
                Text(
                  'P',
                  style: titleStyle(),
                ),
                Text(
                  'O',
                  style: titleStyle(),
                ),
                Text(
                  'R',
                  style: titleStyle(),
                ),
                Text(
                  'T',
                  style: titleStyle(),
                ),
                Text(
                  'S',
                  style: titleStyle(),
                ),
                Text(
                  'J',
                  style: titleStyle(),
                ),
                Text(
                  'A',
                  style: titleStyle(),
                ),
                Text(
                  'M',
                  style: titleStyle(),
                ),
              ]
                  .animate(
                    interval: 300.ms,
                  )
                  .fade(duration: 275.ms)
                  .then(delay: const Duration(seconds: 7)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                    strokeWidth: 5.0,
                  ),
                ]
                    .animate(interval: 5.seconds)
                    .fadeIn(delay: const Duration(seconds: 3))
                    .fadeOut(delay: const Duration(seconds: 6))),
          ],
        ),
      ),
    );
  }
}
