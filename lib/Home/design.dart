// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Home/acc_in.dart';
import 'package:izzi/Widget/iconlist.dart';

import '../Constance/constance.dart';
import '../Constance/theme.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
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
                'Design',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Course to get you started',
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
              SizedBox(
                height: 20,
              ),
              Text(
                'Feature Course',
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
                      ConstanceData.S8,
                      height: 168,
                      width: 257,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      ConstanceData.S9,
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
                'Popular topics',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Chip1(title: 'PHOTOSHOP'),
                    SizedBox(
                      width: 5,
                    ),
                    Chip1(title: 'UX DESIGN'),
                    SizedBox(
                      width: 5,
                    ),
                    Chip1(title: 'UI DESIGN'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Subcategories',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Chip1(title: 'CINEMA 4D'),
                    SizedBox(
                      width: 5,
                    ),
                    Chip1(title: 'GRAPHIC DESIGN'),
                    SizedBox(
                      width: 5,
                    ),
                    Chip1(title: 'DESIGN TOOL'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Popular instructors',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              Container(
                height: 85,
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AccIn(),
                              ),
                            );
                          },
                          child: Container(
                            width: 280,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: HexColor('#EBEBEB'), width: 1)),
                            child: Row(
                              children: [
                                Image.asset(
                                  ConstanceData.S32,
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Connie Murphy',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      'UX DESIGN  •  24COURSE',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontSize: 12,
                                              color: Theme.of(context)
                                                  .disabledColor),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AccIn(),
                              ),
                            );
                          },
                          child: Container(
                            width: 280,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: HexColor('#EBEBEB'), width: 1)),
                            child: Row(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Connie Murphy',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      'UX DESIGN  •  24COURSE',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontSize: 12,
                                              color: Theme.of(context)
                                                  .disabledColor),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'All course',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              CourseCard(
                title: 'Adobe XD UI UX Design',
                learnerCount: '788 learners',
                price: '39',
                imageAsset: ConstanceData.S33,
                learnerIconAsset: ConstanceData.S34,
              ),
              CourseCard(
                title: 'Design Masterclass ',
                learnerCount: '837 learners',
                price: '32',
                imageAsset: ConstanceData.S35,
                learnerIconAsset: ConstanceData.S34,
              ),
              CourseCard(
                title: 'Learn Figma Basic ',
                learnerCount: '931 learners',
                price: '48',
                imageAsset: ConstanceData.S36,
                learnerIconAsset: ConstanceData.S34,
              ),
              CourseCard(
                title: 'Design Thinking ',
                learnerCount: '1.293 learners',
                price: '51',
                imageAsset: ConstanceData.S37,
                learnerIconAsset: ConstanceData.S34,
              ),
              CourseCard(
                title: 'Logo Design ',
                learnerCount: '824 learners',
                price: '72',
                imageAsset: ConstanceData.S38,
                learnerIconAsset: ConstanceData.S34,
              ),
              CourseCard(
                title: 'App Design Course',
                learnerCount: '824 learners',
                price: '56',
                imageAsset: ConstanceData.S39,
                learnerIconAsset: ConstanceData.S34,
              ),
              CourseCard(
                title: 'Sketching for Designers',
                learnerCount: '824 learners',
                price: '56',
                imageAsset: ConstanceData.S40,
                learnerIconAsset: ConstanceData.S34,
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
  final String learnerIconAsset;

  const CourseCard({
    Key? key,
    required this.title,
    required this.learnerCount,
    required this.price,
    required this.imageAsset,
    required this.learnerIconAsset,
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
            height: 56,
            width: 56,
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
                Row(
                  children: [
                    Image.asset(
                      learnerIconAsset,
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      learnerCount,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 15, color: Theme.of(context).disabledColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 24,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              '\$$price',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 15, color: HexColor('#FFFFFF')),
            ),
          )
        ],
      ),
    );
  }
}
