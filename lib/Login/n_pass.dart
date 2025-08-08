// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:izzi/Login/login.dart';

import '../Widget/buttons.dart';
import '../Widget/textFieldP.dart';

class NPass extends StatefulWidget {
  const NPass({super.key});

  @override
  State<NPass> createState() => _NPassState();
}

class _NPassState extends State<NPass> {
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
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Create new password',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 24),
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
                MyTextFieldP(hintText: 'New Password'),
                SizedBox(
                  height: 15,
                ),
                MyTextFieldP(hintText: 'Confirm new Password'),
              ],
            )),
            Padding(
              padding: EdgeInsets.all(20),
              child: MyButton(
                  btnName: 'Done',
                  click: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Login(),
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
