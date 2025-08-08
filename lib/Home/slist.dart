// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';

class SList extends StatefulWidget {
  const SList({super.key});

  @override
  State<SList> createState() => _SListState();
}

class _SListState extends State<SList> {
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
              Text(
                'Student',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 15,
              ),
              UserCard(
                  name: 'Shane Black',
                  joiningYear: '2020',
                  imageAsset: ConstanceData.S48,
                  bg: Theme.of(context).primaryColor,
                  title: 'Add friend',
                  tcolor: Colors.white),
              SizedBox(
                height: 15,
              ),
              UserCard(
                  name: 'Ann Howard',
                  joiningYear: '2020',
                  imageAsset: ConstanceData.S49,
                  bg: HexColor('#EBEBEB'),
                  title: 'Cancel',
                  tcolor: HexColor('#1A1A1A')),
              SizedBox(
                height: 15,
              ),
              UserCard(
                  name: 'Debra Murphy',
                  joiningYear: '2020',
                  imageAsset: ConstanceData.S50,
                  bg: Theme.of(context).primaryColor,
                  title: 'Add friend',
                  tcolor: Colors.white),
              SizedBox(
                height: 15,
              ),
              UserCard(
                  name: 'Bernard Fox',
                  joiningYear: '2020',
                  imageAsset: ConstanceData.S51,
                  bg: Theme.of(context).primaryColor,
                  title: 'Add friend',
                  tcolor: Colors.white),
              SizedBox(
                height: 15,
              ),
              UserCard(
                  name: 'Cody Nguyen',
                  joiningYear: '2020',
                  imageAsset: ConstanceData.S52,
                  bg: Theme.of(context).primaryColor,
                  title: 'Add friend',
                  tcolor: Colors.white),
              SizedBox(
                height: 15,
              ),
              UserCard(
                  name: 'Norma Jones',
                  joiningYear: '2020',
                  imageAsset: ConstanceData.S53,
                  bg: Theme.of(context).primaryColor,
                  title: 'Add friend',
                  tcolor: Colors.white),
                 SizedBox(
                height: 15,
              ),
              UserCard(
                  name: 'Irma Henry',
                  joiningYear: '2020',
                  imageAsset: ConstanceData.S54,
                  bg: Theme.of(context).primaryColor,
                  title: 'Add friend',
                  tcolor: Colors.white),
            ],
          ))
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final String name;
  final String joiningYear;
  final String imageAsset;

  final Color bg;
  final String title;
  final Color tcolor;

  const UserCard({
    Key? key,
    required this.name,
    required this.joiningYear,
    required this.imageAsset,
    required this.bg,
    required this.title,
    required this.tcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageAsset,
          height: 72,
          width: 72,
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Join in $joiningYear',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: 15, color: Theme.of(context).disabledColor),
            ),
          ],
        )),
        Container(
            alignment: Alignment.center,
            height: 36,
            width: 108,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: bg,
            ),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 15, color: tcolor),
            )),
      ],
    );
  }
}
