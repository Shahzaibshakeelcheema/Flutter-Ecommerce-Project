//import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/views/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          //for making icon colors of app
          iconTheme: IconThemeData(
            color: darkFontGrey
          ),
          backgroundColor: Colors.transparent,
        ),
        fontFamily: regular,
      ),
      home:  const SplashScreen(),
    );
  }
}

