// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Login/login.dart';
import 'package:izzi/Login/success.dart';
import 'package:izzi/Widget/buttons.dart';
import 'package:izzi/Widget/textFiealds.dart';
import 'package:izzi/Widget/textFieldP.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                      'Register New Account',
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
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).padding.bottom + 20),
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Email',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                MyTextField(hintText: 'Email Address'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Usename',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                MyTextField(hintText: 'Enter User name'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                MyTextFieldP(hintText: 'Enter Password'),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                    btnName: 'Register',
                    click: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Success(),
                        ),
                      );
                    }),
                    SizedBox(
                  height: 20,
                ),
              ],
            )),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Already have account?',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontSize: 15,
                          ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16, decoration: TextDecoration.underline),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
