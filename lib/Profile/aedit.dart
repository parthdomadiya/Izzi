// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';

import '../Constance/theme.dart';
import '../Widget/buttons.dart';
import '../Widget/textFiealds.dart';

class Aedit extends StatefulWidget {
  const Aedit({super.key});

  @override
  State<Aedit> createState() => _AeditState();
}

class _AeditState extends State<Aedit> {
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
          // crossAxisAlignment: CrossAxisAlignment.start,
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
                'Edit info',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 24,
                      color: HexColor('#1A1A1A'),
                    ),
                // textAlign: TextAlign.left,
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
                  Image.asset(
                    ConstanceData.a20,
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Rober Webb',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'User name',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyTextField(hintText: 'Rober Webb'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Phone number',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyTextField(hintText: '(270) 555-0117'),
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
                  MyTextField(hintText: 'robert@tmrw.studio'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Gender',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyTextField(hintText: 'Male'),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: MyButton(
                btnName: 'Save change',
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
