// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:izzi/Chat/chat.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Course/course.dart';
import 'package:izzi/Home/feature.dart';
import 'package:izzi/Profile/account.dart';
import 'package:izzi/Wishlist/wishlist.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          index == 0
              ? Feature()
              : index == 1
                  ? Chat()
                  : index == 2
                      ? Course()
                      : index == 3
                          ? Wishlist()
                          : Account(),
          Container(
            height: 60 + MediaQuery.of(context).padding.bottom,
            decoration: BoxDecoration(
              color: AppTheme.isLightTheme
                  ? Color(0xFFffffff)
                  : HexColor("#111827"),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: Offset(5.0, 5.0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        index == 0 ? Ionicons.star : Ionicons.star_outline,
                        size: 24,
                        color: index == 0
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                      Text(
                        "Features",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color: index == 0
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        index == 1
                            ? Ionicons.chatbubbles
                            : Ionicons.chatbubbles_outline,
                        size: 24,
                        color: index == 1
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                      Text(
                        "Chat",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color: index == 1
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.logo_youtube,
                        size: 24,
                        color: index == 2
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                      Text(
                        "My Courses",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color: index == 2
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Icon(
                        index == 3 ? Ionicons.heart : Ionicons.heart_outline,
                        size: 24,
                        color: index == 3
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                     
                      Text(
                        "Wishlist",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color: index == 3
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      )
                    ],
                  ),
                ),
                 InkWell(
                  onTap: () {
                    setState(() {
                      index = 4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Icon(
                        index == 4 ? Ionicons.person : Ionicons.person_outline,
                        size: 24,
                        color: index == 4
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                     
                      Text(
                        "Account",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color: index == 4
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
