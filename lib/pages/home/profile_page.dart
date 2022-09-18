import 'package:flutter/material.dart';
import 'package:store_app/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
          child: Text(
        'Profil Page',
        style: primaryTextStyle,
      )),
    );
  }
}
