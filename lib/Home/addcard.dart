// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Home/checkout.dart';
import 'package:izzi/Widget/buttons.dart';
import 'package:izzi/Widget/textFiealds.dart';

import '../Constance/theme.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(Ionicons.scan,
                        size: 24, color: HexColor('#1A1A1A')),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.only(
                  top: 5,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).padding.bottom + 20),
              children: [
                Text(
                  'Update card',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(ConstanceData.S43),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Card number',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                MyTextField(hintText: 'xxxx xxxx xxxx 0933'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Cardholder Name',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                MyTextField(hintText: 'Max Murphy'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expire date',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextField(hintText: '03/22'),
                      ],
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'CVV',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Ionicons.help_circle,
                              size: 16,
                              color: Theme.of(context).disabledColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextField(hintText: '03/22'),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                MyButtonO(
                    icon: Ionicons.trash_outline,
                    color: HexColor('#FE7272'),
                    icolor: HexColor('#FE7272'),
                    title: 'Delete Card',
                    tcolor: HexColor('#FE7272'))
              ],
            )),
            Padding(
              padding: EdgeInsets.all(20),
              child: MyButton(
                  btnName: 'Update Card',
                  click: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Checkout(),
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
