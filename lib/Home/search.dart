// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Home/search1.dart';
import 'package:izzi/Home/search2.dart';
import 'package:izzi/Widget/iconlist.dart';

import '../Constance/constance.dart';
import '../Constance/theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Ionicons.chevron_back,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      alignment: Alignment.center,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(context).scaffoldBackgroundColor),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Theme.of(context).primaryColor,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontSize: 16),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(color: HexColor('#AFAFAF')),
                            prefixIcon: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Search1(),
                                  ),
                                );
                              },
                              child: Icon(
                                Ionicons.search,
                                size: 24,
                                color: Theme.of(context).primaryColor,
                              ),
                            )),
                      ),
                    ),
                  ),
                  Text(
                    'Cancel',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 15, color: Colors.white),
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
                  'Top search',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18,
                      ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Search2(),
                              ),
                            );
                          },
                          child: Chip1(title: 'DESIGN')),
                      SizedBox(
                        width: 13,
                      ),
                      Chip1(title: 'FINANCE'),
                      SizedBox(
                        width: 13,
                      ),
                      Chip1(title: 'JAVA'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Chip1(title: 'IT & SOFTWARE'),
                      SizedBox(
                        width: 13,
                      ),
                      Chip1(title: 'UNITY'),
                      SizedBox(
                        width: 13,
                      ),
                      Chip1(title: 'C#'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Browse Categories',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18,
                      ),
                ),
                SizedBox(
                  height: 15,
                ),
                Cat(
                    imagePath: ConstanceData.S21,
                    bg: HexColor('#EDF6FF'),
                    bord: HexColor('#D0E8FF'),
                    title: 'Development',
                    tcolor: HexColor('#50A8FF')),
                SizedBox(
                  height: 15,
                ),
                Cat(
                    imagePath: ConstanceData.S22,
                    bg: HexColor('#F6F1FF'),
                    bord: HexColor('#E7D9FF'),
                    title: 'Business',
                    tcolor: HexColor('#A772FF')),
                SizedBox(
                  height: 15,
                ),
                Cat(
                    imagePath: ConstanceData.S23,
                    bg: HexColor('#FFF9ED'),
                    bord: HexColor('#FFEFCF'),
                    title: 'Design',
                    tcolor: HexColor('#FFC34E')),
                SizedBox(
                  height: 15,
                ),
                Cat(
                    imagePath: ConstanceData.S24,
                    bg: HexColor('#EDF6FF'),
                    bord: HexColor('#D0E8FF'),
                    title: 'Finance',
                    tcolor: HexColor('#50A8FF')),
                SizedBox(
                  height: 15,
                ),
                Cat(
                    imagePath: ConstanceData.S25,
                    bg: HexColor('#FFF1F1'),
                    bord: HexColor('#FFD9D9'),
                    title: 'IT & Software',
                    tcolor: HexColor('#FE7272')),
                SizedBox(
                  height: 15,
                ),
                Cat(
                    imagePath: ConstanceData.S26,
                    bg: HexColor('#ECFAF4'),
                    bord: HexColor('#CDF3E1'),
                    title: 'Marketing',
                    tcolor: HexColor('#46D191')),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
