// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, unnecessary_new

import 'package:flutter/material.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 700));
    animationController.forward();
    _loadNextScreen();
    super.initState();
  }

  _loadNextScreen() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacementNamed(context, Routes.INTRO);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset(ConstanceData.Logo,height: 64,width: 42,))
        ],
      )
    );
  }
}
