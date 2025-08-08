// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Bottom/bottom.dart';
import 'package:izzi/Constance/theme.dart';

import '../Widget/buttons.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Ionicons.checkmark_circle_outline,
              size: 85,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Success!',
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your account has been create',
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(fontSize: 16, color: HexColor('#333333')),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MyButton(
                btnName: 'Continue',
                click: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BottomScreen(),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
