// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';

import '../Constance/theme.dart';

class Search2 extends StatefulWidget {
  const Search2({super.key});

  @override
  State<Search2> createState() => _Search2State();
}

class _Search2State extends State<Search2> {
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
                            hintText: 'Design',
                            hintStyle: TextStyle(color: HexColor('#AFAFAF')),
                            prefixIcon: Icon(
                              Ionicons.search,
                              size: 24,
                              color: Theme.of(context).primaryColor,
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
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).padding.bottom + 20),
              children: [
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
