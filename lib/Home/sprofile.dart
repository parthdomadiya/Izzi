// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Home/slist.dart';
import 'package:izzi/Widget/buttons.dart';

class SProfile extends StatefulWidget {
  const SProfile({super.key});

  @override
  State<SProfile> createState() => _SProfileState();
}

class _SProfileState extends State<SProfile> {
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
                  ConstanceData.S20,
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Kristin Williamson',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 24,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: HexColor('#FFC34E')),
                    child: Text(
                      'VIP',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'This is the kind of simple, friendly language that invites the reader in.',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(fontSize: 15, color: HexColor('#333333')),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SList(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: MyButtonO1(
                      title: 'Add friend',
                      tcolor: Theme.of(context).primaryColor,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Achievements',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 18,
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              Cat1(
                  icon: Ionicons.star,
                  bg: HexColor('#FFF9ED'),
                  bord: HexColor('#FFEFCF'),
                  title: '100 course complete',
                  tcolor: HexColor('#FFC34E'),
                  icolor: HexColor('#FFC34E')),
              SizedBox(
                height: 15,
              ),
              Cat1(
                  icon: Ionicons.time,
                  bg: HexColor('#F6F1FF'),
                  bord: HexColor('#E7D9FF'),
                  title: '1.200 hours leaned',
                  tcolor: HexColor('#A772FF'),
                  icolor: HexColor('#A772FF')),
              SizedBox(
                height: 15,
              ),
              Cat1(
                  icon: Ionicons.star,
                  bg: HexColor('#EDF6FF'),
                  bord: HexColor('#D0E8FF'),
                  title: '50 course complete',
                  tcolor: HexColor('#50A8FF'),
                  icolor: HexColor('#50A8FF')),
              SizedBox(
                height: 15,
              ),
              Cat1(
                  icon: Ionicons.star,
                  bg: HexColor('#ECFAF4'),
                  bord: HexColor('#CDF3E1'),
                  title: '20 course complete',
                  tcolor: HexColor('#46D191'),
                  icolor: HexColor('#46D191')),
              SizedBox(
                height: 15,
              ),
              Cat1(
                  icon: Ionicons.star,
                  bg: HexColor('#FFF8FB'),
                  bord: HexColor('#FFEDF4'),
                  title: '20 course complete',
                  tcolor: HexColor('#FDA5C8'),
                  icolor: HexColor('#FDA5C8')),
            ],
          ))
        ],
      ),
    );
  }
}

class Cat1 extends StatefulWidget {
  final IconData? icon;
  final Color bg;
  final Color bord;
  final String title;
  final Color tcolor;
  final Color icolor;
  const Cat1({
    required this.icon,
    required this.bg,
    required this.bord,
    required this.title,
    required this.tcolor,
    required this.icolor,
  });

  @override
  State<Cat1> createState() => _Cat1State();
}

class _Cat1State extends State<Cat1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: widget.bg,
            border: Border.all(color: widget.bord, width: 1)),
        child: Row(
          children: [
            Icon(
              widget.icon,
              size: 24,
              color: widget.icolor,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Text(
                widget.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 18, color: widget.tcolor),
              ),
            )
          ],
        ));
  }
}
