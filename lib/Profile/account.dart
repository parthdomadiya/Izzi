// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Login/login.dart';
import 'package:izzi/Profile/achieve.dart';
import 'package:izzi/Profile/aedit.dart';
import 'package:izzi/Profile/apass.dart';
import 'package:izzi/Profile/enoty.dart';
import 'package:izzi/Profile/invite.dart';
import 'package:izzi/Profile/remind.dart';
import 'package:izzi/Profile/terms.dart';

import '../Constance/constance.dart';
import '../Constance/theme.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          SizedBox(
            height: AppBar().preferredSize.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Account',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 24,
                          color: HexColor('#1A1A1A'),
                        ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Aedit(),
                        ),
                      );
                    },
                    icon: Icon(
                      Ionicons.settings_outline,
                      size: 24,
                      color: HexColor('#1A1A1A'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Image.asset(
            ConstanceData.a12,
            height: 80,
            width: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Robert Webb',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 16, color: HexColor('#1A1A1A')),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            height: 24,
            width: 49,
            decoration: BoxDecoration(
              color: HexColor('#FFC34E'),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'VIP',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontSize: 12, color: HexColor('#FFFFFF')),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                  top: 0,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).padding.bottom + 80),
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          ConstanceData.a21,
                          height: 56,
                          width: 56,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '120 HOURS',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 16, color: HexColor('#1A1A1A')),
                        ),
                        Text(
                          'Study time',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 12, color: HexColor('#AFAFAF')),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          ConstanceData.a22,
                          height: 56,
                          width: 56,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '32 HOURS',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 16, color: HexColor('#1A1A1A')),
                        ),
                        Text(
                          'Learned',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontSize: 12, color: HexColor('#AFAFAF')),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ACCOUNT',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15, color: HexColor('#AFAFAF')),
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a23,
                  title: 'Achievements',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Achieve(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a24,
                  title: 'Change password',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Apass(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a25,
                  title: 'Email notifications',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Enoty(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a26,
                  title: 'Learning reminders',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Remind(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a27,
                  title: 'Payment',
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'SUPPORT',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15, color: HexColor('#AFAFAF')),
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a28,
                  title: 'Term of use',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Terms(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a29,
                  title: 'Privacy policy',
                  onTap: () {},
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a30,
                  title: 'Invite friend',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Invite(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                AccList(
                  imagePath: ConstanceData.a31,
                  title: 'Help',
                  onTap: () {},
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Login(),
                      ),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        ConstanceData.a32,
                        height: 48,
                        width: 48,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Log out',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16, color: HexColor('#FE7272')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AccList extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const AccList({
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEBEBEB)),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16, color: HexColor('#333333')),
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
