// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Widget/iconlist.dart';

import '../Constance/theme.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
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
                'Categories',
                style: Theme.of(context).textTheme.labelMedium,
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
              SizedBox(
                height: 15,
              ),
              Cat(
                  imagePath: ConstanceData.S27,
                  bg: HexColor('#FFF9ED'),
                  bord: HexColor('#FFEFCF'),
                  title: 'Photography',
                  tcolor: HexColor('#FFC34E')),
               SizedBox(
                height: 15,
              ),
              Cat(
                  imagePath: ConstanceData.S28,
                  bg: HexColor('#FFF8FB'),
                  bord: HexColor('#FFEDF4'),
                  title: 'Music',
                  tcolor: HexColor('#FDA5C8')),
              SizedBox(
                height: 15,
              ),
              Cat(
                  imagePath: ConstanceData.S29,
                  bg: HexColor('#EDF6FF'),
                  bord: HexColor('#D0E8FF'),
                  title: 'Health & Fitness',
                  tcolor: HexColor('#50A8FF')),
              SizedBox(
                height: 15,
              ),
              Cat(
                  imagePath: ConstanceData.S30,
                  bg: HexColor('#FFF1F1'),
                  bord: HexColor('#FFD9D9'),
                  title: 'Office Productivity',
                  tcolor: HexColor('#FE7272')),
              SizedBox(
                height: 15,
              ),
              Cat(
                  imagePath: ConstanceData.S31,
                  bg: HexColor('#F6F1FF'),
                  bord: HexColor('#E7D9FF'),
                  title: 'Teaching & Academics',
                  tcolor: HexColor('#A772FF')),
            ],
          )),
        ],
      ),
    );
  }
}
