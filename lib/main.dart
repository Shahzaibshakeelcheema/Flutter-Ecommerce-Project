//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //as we are using getx now change material app into getmaterialapp

    return  GetMaterialApp(
      title: "The Knives Store",
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        fontFamily: regular,
      ),
      home:  const SplashScreen(),
    );
  }
}

