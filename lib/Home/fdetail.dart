// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Home/checkout.dart';
import 'package:izzi/Widget/buttons.dart';

class FDetail extends StatefulWidget {
  const FDetail({super.key});

  @override
  State<FDetail> createState() => _FDetailState();
}

class _FDetailState extends State<FDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: HexColor('#22211B'),
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).padding.top,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Ionicons.chevron_back,
                              size: 24,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                          Icon(
                            Ionicons.share_social_outline,
                            size: 24,
                            color: HexColor('#FFFFFF'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            ConstanceData.S12,
                            height: 115,
                            width: 200,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Transform.translate(
                      offset: const Offset(0, -30),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(40)),
                          child: Icon(
                            Ionicons.play_outline,
                            size: 22,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
          // SizedBox(height: 0,),
          Expanded(
              child: ListView(
            padding: EdgeInsets.only(
                top: 0,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).padding.bottom + 20),
            children: [
              Text(
                'Marathon Training with the Pose Method',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Ionicons.time_outline,
                    size: 17,
                    color: HexColor('#1A1A1A'),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    '24 hours',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 15),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Ionicons.stats_chart_outline,
                    size: 17,
                    color: HexColor('#1A1A1A'),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Beginner',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$48',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'by ',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context).disabledColor, fontSize: 18),
                      children: [
                        TextSpan(
                            text: 'Daniel',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                    fontSize: 18,
                                    color: Theme.of(context).primaryColor))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  text:
                      'Programming can be fun as well as challenging. This course provides the core knowledge to begin... ',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: HexColor('#333333'), fontSize: 16),
                  children: [
                    TextSpan(
                        text: 'more',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    ConstanceData.S14,
                    height: 35,
                    width: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    'What you\'ll learn',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18),
                  ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Ionicons.checkmark,
                    size: 17,
                    color: HexColor('#1A1A1A'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    'Build and program a calculator',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Ionicons.checkmark,
                    size: 17,
                    color: HexColor('#1A1A1A'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    'Understand Data Types',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Ionicons.checkmark,
                    size: 17,
                    color: HexColor('#1A1A1A'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    'Understand and create Arrays',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    ConstanceData.S15,
                    height: 35,
                    width: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    'Requirements',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18),
                  ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Ionicons.checkmark,
                    size: 17,
                    color: HexColor('#1A1A1A'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    'You should be able to use a PC',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 16),
                  ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Ionicons.checkmark,
                    size: 17,
                    color: HexColor('#1A1A1A'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text:
                            'You should be comfortable navigating the internet... ',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: HexColor('#333333'), fontSize: 16),
                        children: [
                          TextSpan(
                              text: 'more',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      fontSize: 16,
                                      color: Theme.of(context).primaryColor))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    ConstanceData.S16,
                    height: 35,
                    width: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    'Course content',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18),
                  ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor('#F9F9F9')),
                child: Row(
                  children: [
                    Text(
                      '01',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 32),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Introduction',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '1:48',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 15, color: HexColor('#333333')),
                        ),
                      ],
                    )),
                    Image.asset(
                      ConstanceData.S17,
                      height: 48,
                      width: 48,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor('#F9F9F9')),
                child: Row(
                  children: [
                    Text(
                      '02',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 32),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Programmming',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3:24',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 15, color: HexColor('#333333')),
                        ),
                      ],
                    )),
                    Image.asset(
                      ConstanceData.S17,
                      height: 48,
                      width: 48,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor('#F9F9F9')),
                child: Row(
                  children: [
                    Text(
                      '03',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 32),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What is Javascript',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '2:36',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 15, color: HexColor('#333333')),
                        ),
                      ],
                    )),
                    Image.asset(
                      ConstanceData.S17,
                      height: 48,
                      width: 48,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor('#F9F9F9')),
                child: Row(
                  children: [
                    Text(
                      '04',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 32),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expression',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3:56',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 15, color: HexColor('#333333')),
                        ),
                      ],
                    )),
                    Image.asset(
                      ConstanceData.S17,
                      height: 48,
                      width: 48,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    ConstanceData.S16,
                    height: 35,
                    width: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    'Student feedback',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18),
                  )),
                  Row(
                    children: [
                      Text(
                        'See all',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
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
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    '4.5',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Ionicons.star,
                    size: 18,
                    color: HexColor('#FFC34E'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Course Rating',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 15, color: Theme.of(context).disabledColor),
                  ),
                ],
              ),
              Container(
                height: 130,
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 280,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: HexColor('#EBEBEB'), width: 1)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    ConstanceData.S19,
                                    height: 50,
                                    width: 50,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Francisco Hawkins',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '4.5',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(
                                                    fontSize: 15,
                                                    color: HexColor('#FFC34E')),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Ionicons.star,
                                            size: 18,
                                            color: HexColor('#FFC34E'),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'High clarity and simplification of each concept.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        fontSize: 12,
                                        color: HexColor('#333333')),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 280,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: HexColor('#EBEBEB'), width: 1)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    ConstanceData.S20,
                                    height: 50,
                                    width: 50,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Francisco Hawkins',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '4.5',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(
                                                    fontSize: 15,
                                                    color: HexColor('#FFC34E')),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Ionicons.star,
                                            size: 18,
                                            color: HexColor('#FFC34E'),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Great course, really impressed with the detail and way of presentation.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        fontSize: 12,
                                        color: HexColor('#333333')),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
          Padding(
            padding: EdgeInsets.all(18),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$48',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                          ),
                    ),
                    Text(
                      '\$240',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 14,
                          color: HexColor('#333333'),
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: MyButton(
                  btnName: 'Buy now',
                  click: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Checkout(),
                      ),
                    );
                  },
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
