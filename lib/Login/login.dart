// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Bottom/bottom.dart';
import 'package:izzi/Login/forgot.dart';
import 'package:izzi/Login/signup.dart';
import 'package:izzi/Widget/textFiealds.dart';
import 'package:izzi/Widget/textFieldP.dart';

import '../Constance/theme.dart';
import '../Widget/buttons.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      'Login',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 24),
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
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Forgot(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot password?',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 15),
                      textAlign: TextAlign.right,
                    ),
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
                            builder: (_) => BottomScreen(),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Or login with',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 15, color: HexColor('#333333')),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: MyButtonO(
                        icon: Ionicons.logo_facebook,
                        color: Theme.of(context).primaryColor,
                        icolor: Theme.of(context).primaryColor,
                        title: 'Facebook',
                        tcolor: Theme.of(context).primaryColor,
                      )),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                          child: MyButtonO(
                        icon: Ionicons.logo_google,
                        color: HexColor('#DF4930'),
                        icolor: HexColor('#DF4930'),
                        title: 'Foogle',
                        tcolor: HexColor('#DF4930'),
                      ))
                    ],
                  )
                ],
              )),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Do you have account?',
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
                            builder: (_) => Signup(),
                          ),
                        );
                      },
                      child: Text(
                        'Register Now',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16, decoration: TextDecoration.underline),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
