// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Login/login.dart';
import 'package:izzi/Login/signup.dart';
import 'package:izzi/Widget/buttons.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Container(
            height: AppBar().preferredSize.height,
            child: Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  ConstanceData.Logo,
                  height: 40,
                  width: 62,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome,',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Login to continue',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 18, color: HexColor('#333333')),
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                    btnName: 'Login',
                    click: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Login(),
                        ),
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Or',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 15, color: HexColor('#333333')),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Signup(),
                        ),
                      );
                  },
                  child: MyButtonO1(
                      title: 'Signup',
                      tcolor: Theme.of(context).primaryColor,
                      color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'By creating new account, you agree to our Terms of Services & Privacy Policy',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 15, color: HexColor('#333333')),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
