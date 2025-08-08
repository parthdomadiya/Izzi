// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Profile/acongrat.dart';

import '../Constance/constance.dart';
import '../Constance/theme.dart';

class Achieve extends StatefulWidget {
  const Achieve({super.key});

  @override
  State<Achieve> createState() => _AchieveState();
}

class _AchieveState extends State<Achieve> {
  bool Completed = true;
  bool Uncompleted = false;
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
              'Achievements',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 24,
                    color: HexColor('#1A1A1A'),
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Acongrat(),
                ),
              );
            },
            child: Image.asset(
              ConstanceData.a2,
              height: 175,
              width: 149,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Uncompleted = false;
                          Completed = true;
                        });
                      },
                      child: Text(
                        'Completed',
                        style:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 16,
                                  color: Completed
                                      ? Color(0xff3F51B5)
                                      : Theme.of(context).disabledColor,
                                ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Completed
                        ? Container(
                            height: 3,
                            color: Color(0xff3F51B5),
                          )
                        : Container(
                            height: 3,
                          ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Completed = false;
                          Uncompleted = true;
                        });
                      },
                      child: Text(
                        'Uncompleted',
                        style:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 16,
                                  color: Uncompleted
                                      ? Color(0xff3F51B5)
                                      : Theme.of(context).disabledColor,
                                ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Uncompleted
                        ? Container(
                            height: 3,
                            color: Color(0xff3F51B5),
                          )
                        : Container(
                            height: 3,
                          ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 15,
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
                Column(
                  children: [
                    Completed
                        ? Column(
                            children: [
                              AchieveItem(
                                img: ConstanceData.a3,
                                mainText: 'The Achiever',
                                subText: 'Logged in everyday for a month',
                                bgcolor: HexColor('#EDF6FF'),
                                bordcolor: HexColor('#D0E8FF'),
                                textColor: HexColor('#50A8FF'),
                              ),
                              SizedBox(height: 15),
                              AchieveItem(
                                img: ConstanceData.a4,
                                mainText: 'The Master',
                                subText: 'Completed 60 course',
                                bgcolor: HexColor('#FFF9ED'),
                                bordcolor: HexColor('#FFEFCF'),
                                textColor: HexColor('#FFC34E'),
                              ),
                              SizedBox(height: 15),
                              AchieveItem(
                                img: ConstanceData.a5,
                                mainText: 'Super Learner',
                                subText: 'Completed 20 course',
                                bgcolor: HexColor('#FFF8FB'),
                                bordcolor: HexColor('#FFEDF4'),
                                textColor: HexColor('#FDA5C8'),
                              ),
                              SizedBox(height: 15),
                              AchieveItem(
                                img: ConstanceData.a6,
                                mainText: 'Quick Learner',
                                subText: 'Completed 1 course',
                                bgcolor: HexColor('#F6F1FF'),
                                bordcolor: HexColor('#E7D9FF'),
                                textColor: HexColor('#A772FF'),
                              ),
                            ],
                          )
                        : Container(),
                    Uncompleted
                        ? Column(
                            children: [
                              AchieveItem(
                                img: ConstanceData.a7,
                                mainText: '200 course complete',
                                subText: '+40 point',
                                bgcolor: HexColor('#F2F3F5'),
                                bordcolor: HexColor('#EBEBEB'),
                                textColor: HexColor('#AFAFAF'),
                              ),
                              SizedBox(height: 15),
                              AchieveItem(
                                img: ConstanceData.a8,
                                mainText: '140 course complete',
                                subText: '+30 point',
                                bgcolor: HexColor('#F2F3F5'),
                                bordcolor: HexColor('#EBEBEB'),
                                textColor: HexColor('#AFAFAF'),
                              ),
                              SizedBox(height: 15),
                              AchieveItem(
                                img: ConstanceData.a9,
                                mainText: '100 course complete',
                                subText: '+30 point',
                                bgcolor: HexColor('#F2F3F5'),
                                bordcolor: HexColor('#EBEBEB'),
                                textColor: HexColor('#AFAFAF'),
                              ),
                              SizedBox(height: 15),
                              AchieveItem(
                                img: ConstanceData.a10,
                                mainText: '80 course complete',
                                subText: '+20 point',
                                bgcolor: HexColor('#F2F3F5'),
                                bordcolor: HexColor('#EBEBEB'),
                                textColor: HexColor('#AFAFAF'),
                              ),
                            ],
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AchieveItem extends StatelessWidget {
  final String img;
  final String mainText;
  final String subText;
  final Color bgcolor;
  final Color bordcolor;
  final Color textColor;

  const AchieveItem({
    super.key,
    required this.img,
    required this.mainText,
    required this.subText,
    required this.bgcolor,
    required this.bordcolor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: bordcolor),
      ),
      child: Row(
        children: [
          Image.asset(
            img,
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
                  mainText,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16, color: textColor),
                ),
                Text(
                  subText,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 12, color: textColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
