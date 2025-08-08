// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Home/sprofile.dart';
import 'package:izzi/Widget/iconlist.dart';

class AccIn extends StatefulWidget {
  const AccIn({super.key});

  @override
  State<AccIn> createState() => _AccInState();
}

class _AccInState extends State<AccIn> {
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
              Center(
                child: Image.asset(
                  ConstanceData.a14,
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Judith Miles',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 24,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: HexColor('#EBEBEB'), width: 1)),
                    child: Text(
                      'Product',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 12),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    height: 24,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: HexColor('#EBEBEB'), width: 1)),
                    child: Text(
                      'UX Design',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SProfile(),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon1(
                          bg: HexColor('#EDF6FF'),
                          imagePath: ConstanceData.S45,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '1.327',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Student',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 12,
                                  color: Theme.of(context).disabledColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon1(
                        bg: HexColor('#FFF1F1'),
                        imagePath: ConstanceData.S46,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '248',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Course',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontSize: 12,
                            color: Theme.of(context).disabledColor),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon1(
                        bg: HexColor('#FFF9ED'),
                        icon: Ionicons.star,
                        icolor: HexColor('#FFC34E'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '4.8',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Rating',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontSize: 12,
                            color: Theme.of(context).disabledColor),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Course by Judith Miles',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sport course',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 18),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      ConstanceData.S8,
                      height: 168,
                      width: 257,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      ConstanceData.S47,
                      height: 168,
                      width: 257,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Product Design',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
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
                      ConstanceData.S11,
                      height: 168,
                      width: 257,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      ConstanceData.S10,
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
    );
  }
}
