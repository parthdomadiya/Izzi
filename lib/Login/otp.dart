// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Login/n_pass.dart';
import 'package:izzi/Widget/buttons.dart';
import '../Constance/theme.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
                      'Enter The Verified Code',
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
                  'We just sent you a verified code via a phone xxxxxx391',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: OtpTextField(
                    numberOfFields: 6,
                    enabledBorderColor: HexColor('#EBEBEB'),
                    borderWidth: 1,
                    focusedBorderColor: Theme.of(context).primaryColor,
                    fillColor: HexColor("#8F92A1"),
                    // styles: [Theme.of(context).textTheme.labelSmall],
                    fieldWidth: 45,
                    fieldHeight: 45,
                    showFieldAsBox: true,
                    autoFocus: true,
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: HexColor('#1A1A1A')),
                    keyboardType: TextInputType.number,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expired 00:59',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16, color: HexColor('#FE7272')),
                    ),
                    Text(
                      'Resend code',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 16, decoration: TextDecoration.underline),
                    ),
                  ],
                )
              ],
            )),
            Padding(
              padding: EdgeInsets.all(20),
              child: MyButton(
                  btnName: 'Submit',
                  click: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NPass(),
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
