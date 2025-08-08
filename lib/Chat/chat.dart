// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Chat/chatd.dart';
import 'package:izzi/Chat/chatd1.dart';
import 'package:izzi/Constance/constance.dart';

import '../Constance/theme.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: AppBar().preferredSize.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Message',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Icon(
                  Ionicons.search,
                  size: 24,
                  color: HexColor('#1A1A1A'),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Contacts',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 16, color: Theme.of(context).primaryColor),
              ),
              Text(
                'Filter',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 16, color: Theme.of(context).disabledColor),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).padding.bottom + 80),
            children: [
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChatD(),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ConstanceData.S67,
                            height: 48,
                            width: 48,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Wendy',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                        ],
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
                            builder: (_) => ChatD(),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ConstanceData.S68,
                            height: 48,
                            width: 48,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Murphy',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                        ],
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
                            builder: (_) => ChatD(),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ConstanceData.S69,
                            height: 48,
                            width: 48,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Cody',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                        ],
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
                            builder: (_) => ChatD(),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ConstanceData.S70,
                            height: 48,
                            width: 48,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Henry',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                        ],
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
                            builder: (_) => ChatD(),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ConstanceData.S71,
                            height: 48,
                            width: 48,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Richards',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatD1(),
                    ),
                  );
                },
                child: CourseCard(
                  title: 'Wendy',
                  learnerCount: 'Today  •  10:30',
                  price: '2',
                  imageAsset: ConstanceData.S67,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatD1(),
                    ),
                  );
                },
                child: CourseCard(
                  title: 'Kyle Murphy',
                  learnerCount: 'Today  •  09:07',
                  price: '6',
                  imageAsset: ConstanceData.S70,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatD1(),
                    ),
                  );
                },
                child: CourseCard1(
                  title: 'Shawn Alexander',
                  learnerCount: 'Friday  •  11:307',
                  imageAsset: ConstanceData.S48,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatD1(),
                    ),
                  );
                },
                child: CourseCard1(
                  title: 'Annette Hawkins',
                  learnerCount: '4 Day ago  •  16:24',
                  imageAsset: ConstanceData.S71,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatD1(),
                    ),
                  );
                },
                child: CourseCard(
                  title: 'Eleanor Cooper',
                  learnerCount: 'Apr 14  •  20:19',
                  price: '1',
                  imageAsset: ConstanceData.S68,
                ),
              ),
             
            ],
          ))
        ],
      ),
    );
  }
}


class CourseCard extends StatelessWidget {
  final String title;
  final String learnerCount;
  final String price;
  final String imageAsset;

  const CourseCard({
    Key? key,
    required this.title,
    required this.learnerCount,
    required this.price,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
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
      child: Row(
        children: [
          Image.asset(
            imageAsset,
            height: 48,
            width: 48,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(height: 3),
                Text(
                  learnerCount,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 12, color: Theme.of(context).disabledColor),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              price,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontSize: 12, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class CourseCard1 extends StatelessWidget {
  final String title;
  final String learnerCount;
  final String imageAsset;

  const CourseCard1({
    Key? key,
    required this.title,
    required this.learnerCount,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
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
      child: Row(
        children: [
          Image.asset(
            imageAsset,
            height: 48,
            width: 48,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(height: 3),
                Text(
                  learnerCount,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 12, color: Theme.of(context).disabledColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
