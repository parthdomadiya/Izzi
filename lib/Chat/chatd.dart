// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';

class ChatD extends StatefulWidget {
  const ChatD({super.key});

  @override
  State<ChatD> createState() => _ChatDState();
}

class _ChatDState extends State<ChatD> {
  bool show = false;
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
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: HexColor("#E4E4E4"),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(5.0, 5.0),
                  )
                ],
              ),
              padding:
                  EdgeInsets.only(top: 14, left: 16, right: 16, bottom: 14),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Ionicons.chevron_back,
                      size: 24,
                      color: HexColor('#1A1A1A'),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Image.asset(
                        ConstanceData.a12,
                        height: 32,
                        width: 32,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Robert Webb',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 6,
                                width: 6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: HexColor('#46D191')),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Active',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        fontSize: 12,
                                        color: HexColor('#46D191')),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(14),
                              height: 200,
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  )),
                              child: Column(
                                children: [
                                  Text(
                                    'Report',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            fontSize: 20,
                                            color: HexColor('#FF3B30')),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    color: HexColor('#EBEBEB'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Block',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            fontSize: 20,
                                            color: HexColor('#FF3B30')),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Cancel',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              fontSize: 20,
                                              color: HexColor('#50A8FF')),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Icon(
                      Ionicons.ellipsis_horizontal,
                      size: 24,
                      color: HexColor('#1A1A1A'),
                    ),
                  ),
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
                  'Mon, Apr 27',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 15, color: Theme.of(context).disabledColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ConstanceData.a12,
                      height: 32,
                      width: 32,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: HexColor('#F9F9F9')),
                            child: Text(
                              'Hi Stuart, I am very interested in today\'s lesson.',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      fontSize: 16, color: HexColor('#333333')),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            margin: EdgeInsets.only(top: 7),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: HexColor('#F9F9F9')),
                            child: Text(
                              'Can you share the lesson image?',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      fontSize: 16, color: HexColor('#333333')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 9),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              topLeft: Radius.circular(12)),
                          color: Theme.of(context).primaryColor),
                      child: Text(
                        'Yes, wait a minute',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Image.asset(
                      ConstanceData.S59,
                      height: 110,
                      width: 204,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ConstanceData.a12,
                      height: 32,
                      width: 32,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: HexColor('#F9F9F9')),
                            child: Text(
                              'Cool, so I\'ll send you back for more references',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      fontSize: 16, color: HexColor('#333333')),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            margin: EdgeInsets.only(top: 7),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: HexColor('#F9F9F9')),
                            child: Text(
                              'Wait a minute, wifi so slow',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      fontSize: 16, color: HexColor('#333333')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 9),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              topLeft: Radius.circular(12)),
                          color: Theme.of(context).primaryColor),
                      child: Text(
                        'I will wait',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ConstanceData.a12,
                      height: 32,
                      width: 32,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.9,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: HexColor('#FFF1F1')),
                            child: Row(
                              children: [
                                Image.asset(
                                  ConstanceData.S60,
                                  height: 16,
                                  width: 16,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Wireframe.pdf',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          fontSize: 16,
                                          color: HexColor('#FE7272')),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            margin: EdgeInsets.only(top: 7),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: HexColor('#F9F9F9')),
                            child: Text(
                              'Ok',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      fontSize: 16, color: HexColor('#333333')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              show = !show;
                            });
                          },
                          child: Icon(
                            Ionicons.add,
                            size: 24,
                            color: Theme.of(context).disabledColor,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: HexColor('#F9F9F9')),
                          child: TextFormField(
                            // textAlignVertical: TextAlignVertical.center,
                            cursorColor: Theme.of(context).primaryColor,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(fontSize: 16),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type here',
                            ),
                          ),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          ConstanceData.S61,
                          height: 20,
                          width: 20,
                        )
                      ],
                    ),
                    show
                        ? Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 85,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ConstanceData.S62,
                                      height: 56,
                                      width: 56,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Contact',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .disabledColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ConstanceData.S63,
                                      height: 56,
                                      width: 56,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Image',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .disabledColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ConstanceData.S64,
                                      height: 56,
                                      width: 56,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'File',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .disabledColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ConstanceData.S65,
                                      height: 56,
                                      width: 56,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Location',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .disabledColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ConstanceData.S66,
                                      height: 56,
                                      width: 56,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Voice',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .disabledColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
