import 'dart:async';

import 'package:flutter/material.dart';
import 'package:store_app/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/logo.png'))),
        ),
      ),
    );
  }
}
