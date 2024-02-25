import 'package:flutter/material.dart';
import 'package:protfolio/src/features/mainpage/main_page.dart';
import 'package:protfolio/src/features/navbar/navbar.dart';
import 'package:protfolio/src/utils/const.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: kblack,
        appBarTheme: const AppBarTheme(backgroundColor: kblack, elevation: 0),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kblack,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              MainPage(),
            ],
          ),
        ),
      ),
    );
  }
}
