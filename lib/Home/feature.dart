// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Home/category.dart';
import 'package:izzi/Home/design.dart';
import 'package:izzi/Home/fdetail.dart';
import 'package:izzi/Home/search.dart';
import 'package:izzi/Widget/iconlist.dart';

class Feature extends StatefulWidget {
  const Feature({super.key});

  @override
  State<Feature> createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
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
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top,
                  ),
                  Image.asset(ConstanceData.S4),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Hello dofight',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18, color: HexColor('#FFFFFF')),
                  ),
                  Text(
                    'Find a source you want to learn',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 15, color: HexColor('#FFFFFF')),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
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
                          hintText: 'Search here',
                          hintStyle: TextStyle(color: HexColor('#AFAFAF')),
                          prefixIcon: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => SearchScreen(),
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
                ],
              ),
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).padding.bottom + 80),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 18,
                          ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Category(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            'See all',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                    fontSize: 15,
                                    color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Ionicons.chevron_forward,
                              size: 15, color: Theme.of(context).primaryColor)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Chip1(title: 'ALL COURCE'),
                      SizedBox(
                        width: 5,
                      ),
                      Chip1(title: 'DESIGN'),
                      SizedBox(
                        width: 5,
                      ),
                      Chip1(title: 'FINANCE'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Featured',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 18,
                          ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Design(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            'See all',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                    fontSize: 15,
                                    color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Ionicons.chevron_forward,
                              size: 15, color: Theme.of(context).primaryColor)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset(
                        ConstanceData.S5,
                        height: 176,
                        width: 150,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        ConstanceData.S6,
                        height: 176,
                        width: 150,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        ConstanceData.S7,
                        height: 176,
                        width: 150,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top course in Sport',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 18,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 15,
                                  color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Ionicons.chevron_forward,
                            size: 15, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => FDetail(),
                            ),
                          );
                        },
                        child: Image.asset(
                          ConstanceData.S8,
                          height: 168,
                          width: 257,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => FDetail(),
                            ),
                          );
                        },
                        child: Image.asset(
                          ConstanceData.S9,
                          height: 168,
                          width: 257,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top course in Personal',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 18,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 15,
                                  color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Ionicons.chevron_forward,
                            size: 15, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset(
                        ConstanceData.S10,
                        height: 168,
                        width: 257,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        ConstanceData.S11,
                        height: 168,
                        width: 257,
                      ),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
