// import 'package:flashcards_app/pages/home_page.dart';
// import 'package:flashcards_app/pages/login_page.dart';
import 'package:flashcards_app/pages/login_page.dart';
import 'package:flashcards_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flashcard App',
      home: LoginPage(),
    );
  }
}