import 'package:bhagavad_gita/Global/AdhyayScreen.dart';
import 'package:bhagavad_gita/Global/BhagavadGita.dart';
import 'package:bhagavad_gita/Global/GitaSarScreen.dart';
import 'package:bhagavad_gita/View/GitaArtiScreen.dart';
import 'package:bhagavad_gita/View/GitaMahatmyaScreen.dart';
import 'package:bhagavad_gita/View/Homepage.dart';
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
      routes: {
        '/': (context) => HomePage(),
        'BhagavadGita': (context) => BhagavadGita(),
        'AdhyayScreen': (context) => AdhyayScreen(),
        'GitaSarScreen': (context) => GitasarScreen(),
        'GitaMahatmyaScreen': (context) => GitaMahatmyaScreen(),
        'GitaArtiScreen': (context) => GitaArtiScreen(),
      },
    );
  }
}
