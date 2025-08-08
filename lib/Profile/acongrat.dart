// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:izzi/Bottom/bottom.dart';
import 'package:izzi/Constance/constance.dart';

import '../Constance/theme.dart';

class Acongrat extends StatefulWidget {
  const Acongrat({super.key});

  @override
  State<Acongrat> createState() => _AcongratState();
}

class _AcongratState extends State<Acongrat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ConstanceData.a1,
                height: 174,
                width: 174,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'New Achievements',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      color: HexColor('#FFFFFF'),
                    ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Congrat! You completed 60 course',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 15,
                      color: HexColor('#FFFFFF'),
                    ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BottomScreen(),
                      ),
                    );
                  },
                  hoverColor: Colors.white,
                  child: Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Text('Continue learnning',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 16)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
