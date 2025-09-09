import 'package:flutter/material.dart';
import 'package:movies/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SuperTrend",
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        /* textButtonTheme: TextButtonThemeData(
          style: FontStyle.
        ) */
      ),
      home: const HomePage(),
      // home: const MyHomePage(title: 'Movies'),
    );
  }
}
