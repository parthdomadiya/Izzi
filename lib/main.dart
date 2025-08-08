// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:izzi/Bottom/bottom.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/splash.dart';
import 'Intro/intro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Izzi",
      routes: routes,
      theme: AppTheme.getTheme(),
    );
  }

  var routes = <String, WidgetBuilder>{
    Routes.SPLASH: (BuildContext context) => SplashScreen(),
    Routes.BOTTOM: (BuildContext context) => BottomScreen(),
    Routes.INTRO: (BuildContext context) => Intro(),
  };
}

class Routes {
  static const SPLASH = "/";
  static const BOTTOM = "/Bottom/bottom";
  static const INTRO = "/Intro/intro";
}
