// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Login/otp.dart';
import 'package:izzi/Widget/buttons.dart';

import '../Widget/textFiealds.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: InkWell(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        hoverColor: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Container(
              height: AppBar().preferredSize.height,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Ionicons.chevron_back,
                        size: 24,
                        color: HexColor('#1A1A1A'),
                      )),
                  Expanded(
                    child: Text(
                      'Forgot password',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).padding.bottom + 20),
              children: [
                Text(
                  'Enter your phone number below, we’ll send you a verify code.',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(hintText: 'Your phone number'),
              ],
            )),
            Padding(
              padding: EdgeInsets.all(20),
              child: MyButton(btnName: 'Next', click: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Otp(),
                        ),
                      );
              }),
            )
          ],
        ),
      ),
    );
  }
}
