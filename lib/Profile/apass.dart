// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Widget/buttons.dart';

import '../Constance/theme.dart';
import '../Widget/textFiealds.dart';
import '../Widget/textFieldP.dart';

class Apass extends StatefulWidget {
  const Apass({super.key});

  @override
  State<Apass> createState() => _ApassState();
}

class _ApassState extends State<Apass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: InkWell(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        hoverColor: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            SizedBox(
              height: AppBar().preferredSize.height,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Ionicons.arrow_back,
                      size: 24,
                      color: HexColor('#1A1A1A'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Change password',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 24,
                      color: HexColor('#1A1A1A'),
                    ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(
                    top: 0,
                    left: 20,
                    right: 20,
                    bottom: MediaQuery.of(context).padding.bottom + 20),
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Current password',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyTextField(hintText: 'xxxxxxxxx'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'New password',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyTextField(hintText: 'New password'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Confirm new password',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyTextFieldP(hintText: 'Confirm new password'),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: MyButton(
                btnName: 'Update password',
                click: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
