// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Widget/iconlist.dart';

import '../Constance/theme.dart';

class Invite extends StatefulWidget {
  const Invite({super.key});

  @override
  State<Invite> createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  bool d1 = true;
  bool d2 = false;
  bool d3 = false;
  bool d4 = false;
  bool d5 = false;
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
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Ionicons.arrow_back,
                    size: 24,
                    color: HexColor('#1A1A1A'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 15),
            child: Text(
              'Invite friend',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 24,
                    color: HexColor('#1A1A1A'),
                  ),
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
                  bottom: MediaQuery.of(context).padding.bottom + 20),
              children: [
                SizedBox(
                  height: 5,
                ),
                InviteItem(
                  imagePath: 'assets/image/a11.png',
                  name: 'Jennie Jones',
                  level: 'Beginner',
                  isInvited: d1,
                  onPressed: () => setState(() => d1 = !d1),
                ),
                SizedBox(
                  height: 15,
                ),
                InviteItem(
                  imagePath: 'assets/image/a12.png',
                  name: 'Dianne Henry',
                  level: 'Intermediate',
                  isInvited: d2,
                  onPressed: () => setState(() => d2 = !d2),
                ),
                SizedBox(
                  height: 15,
                ),
                InviteItem(
                  imagePath: 'assets/image/a13.png',
                  name: 'Pat Webb',
                  level: 'Beginner',
                  isInvited: d3,
                  onPressed: () => setState(() => d3 = !d3),
                ),
                SizedBox(
                  height: 15,
                ),
                InviteItem(
                  imagePath: 'assets/image/a14.png',
                  name: 'Judith Howard',
                  level: 'Expert',
                  isInvited: d4,
                  onPressed: () => setState(() => d4 = !d4),
                ),
                SizedBox(
                  height: 15,
                ),
                InviteItem(
                  imagePath: 'assets/image/a15.png',
                  name: 'Regina Russell',
                  level: 'Intermediate',
                  isInvited: d5,
                  onPressed: () => setState(() => d5 = !d5),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Share invite via',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18,
                        color: HexColor('#1A1A1A'),
                      ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    Icon2(imagePath: ConstanceData.a16,),
                    SizedBox(width: 20,),
                    Icon2(imagePath: ConstanceData.a17,),
                    SizedBox(width: 20,),
                    Icon2(imagePath: ConstanceData.a18,),
                    SizedBox(width: 20,),
                    Icon2(imagePath: ConstanceData.a19,),
                    SizedBox(width: 20,),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InviteItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String level;
  final bool isInvited;
  final VoidCallback onPressed;

  const InviteItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.level,
    required this.isInvited,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: HexColor('#AFAFAF').withOpacity(0.5),
            offset: Offset(0, 2),
            blurRadius: 7,
            spreadRadius: 1,
          ),
        ],
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16, color: HexColor('#1A1A1A')),
                ),
                Text(
                  level,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 12, color: HexColor('#AFAFAF')),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onPressed,
            child: Container(
              alignment: Alignment.center,
              height: 24,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isInvited ? HexColor('#3F51B5') : HexColor('#D4D4D4')),
              child: Text(
                isInvited ? 'Invite' : 'Invited',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
