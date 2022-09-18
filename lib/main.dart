import 'package:flutter/material.dart';
import 'package:store_app/pages/detail_chat_page.dart';
import 'package:store_app/pages/home/main_page.dart';
import 'package:store_app/pages/login_page.dart';
import 'package:store_app/pages/register_page.dart';
import 'package:store_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const MainPages(),
        '/detail-chat': (context) => const DetailChat(),
      },
    );
  }
}
