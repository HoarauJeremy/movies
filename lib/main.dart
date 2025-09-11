import 'package:flutter/material.dart';

import 'dart:convert';
import 'dart:developer';
import 'package:movies/screens/about.dart';
import 'package:movies/screens/home_page.dart';

import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await DatabaseHelper.instance.database;
  runApp(
    /* MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/movies': (context) => MyApp(),
        '/favorite': (context) => MyApp(),
        '/about': (context) => AboutPage(),
      },
    ),
  ); */
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List posts = [];
  bool isLoading = true;

  Future<void> fetchPost() async {
    const String apiKey = '8d41a84e1f2be24ea41202b3c7d2bf51';

    final response = await http.get(
      Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey&language=fr-FR',
      ),
    );

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      setState(() {
        posts = data;
        isLoading = false;
      });
    } else {
      throw Exception("erreur lors du chargement : ${response.statusCode}");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPost();
  }

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
