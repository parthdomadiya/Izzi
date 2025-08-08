// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, use_super_parameters

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Course/filter.dart';
import 'package:izzi/Widget/buttons.dart';

import '../Constance/theme.dart';
import '../Widget/textFiealds.dart';

class Fdetail1 extends StatefulWidget {
  const Fdetail1({super.key});

  @override
  State<Fdetail1> createState() => _Fdetail1State();
}

class _Fdetail1State extends State<Fdetail1> {
  bool Lectures = true;
  bool More = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Stack(
                children: [
                  Image.asset(
                    ConstanceData.a47,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                  SizedBox(
                    height: AppBar().preferredSize.height + 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Ionicons.chevron_down,
                              size: 24,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                ConstanceData.a50,
                                height: 24,
                                width: 24,
                              )),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Filter(),
                                ),
                              );
                            },
                            icon: Image.asset(
                              ConstanceData.a49,
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 22,
                    child: Image.asset(
                      ConstanceData.a48,
                      height: 32,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 12,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: HexColor('#FFFFFF'),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'UX & Web Design Master: Strategy, Design, Development',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 20,
                    color: HexColor('#1A1A1A'),
                  ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text(
                  'by',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 16,
                        color: HexColor('#AFAFAF'),
                      ),
                ),
                Text(
                  ' Daniel',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 16,
                        color: HexColor('#1A1A1A'),
                      ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: HexColor('#EBEBEB'),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Note',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color: HexColor('#333333'),
                            ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        ConstanceData.a52,
                        height: 16,
                        width: 16,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
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
                          More = false;
                          Lectures = true;
                        });
                      },
                      child: Text(
                        'Lectures',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                              color: Lectures
                                  ? Color(0xff3F51B5)
                                  : Theme.of(context).disabledColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Lectures
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
                          Lectures = false;
                          More = true;
                        });
                      },
                      child: Text(
                        'More',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                              color: More
                                  ? Color(0xff3F51B5)
                                  : Theme.of(context).disabledColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    More
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
                    Lectures
                        ? Column(
                            children: [
                              Text(
                                'Section 1 - Course introduction',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 16,
                                        color: Theme.of(context).primaryColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Ionicons.checkmark_circle,
                                      size: 24, color: HexColor('#46D191')),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          color: HexColor('#F9F9F9'),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Row(
                                        children: [
                                          Text('01',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium),
                                          SizedBox(width: 15),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Introduction',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                            fontSize: 16,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor)),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text('45:00 mins',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall!
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color: HexColor(
                                                                '#333333'))),
                                              ],
                                            ),
                                          ),
                                          Icon(Ionicons.download,
                                              size: 24,
                                              color: Theme.of(context)
                                                  .disabledColor),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -28),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -55),
                                child: CustomListItem(
                                  number: '02',
                                  title: 'Introduction to UX',
                                  duration: '45:00 mins',
                                  dicolor: Theme.of(context).primaryColor,
                                ),
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -81),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -106),
                                child: CustomListItem(
                                  number: '03',
                                  title: 'Get Ready to Define',
                                  duration: '30:00 mins',
                                  dicolor: Theme.of(context).disabledColor,
                                ),
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -132),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -157),
                                child: CustomListItem(
                                  number: '04',
                                  title: 'Why Are We Doing This',
                                  duration: '53:00 mins',
                                  dicolor: Theme.of(context).disabledColor,
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -130),
                                child: Text(
                                  'Section 2 - Planning for Success',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                          fontSize: 16,
                                          color:
                                              Theme.of(context).primaryColor),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -105),
                                child: CustomListItem(
                                  number: '01',
                                  title: 'Introduction',
                                  duration: '45:00 mins',
                                  dicolor: Theme.of(context).disabledColor,
                                ),
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -131),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -156),
                                child: CustomListItem(
                                  number: '02',
                                  title: 'Introduction to UX',
                                  duration: '45:00 mins',
                                  dicolor: Theme.of(context).primaryColor,
                                ),
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -181),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -206),
                                child: CustomListItem(
                                  number: '03',
                                  title: 'Get Ready to Define',
                                  duration: '30:00 mins',
                                  dicolor: Theme.of(context).disabledColor,
                                ),
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -231),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -256),
                                child: CustomListItem(
                                  number: '04',
                                  title: 'Why Are We Doing This',
                                  duration: '53:00 mins',
                                  dicolor: Theme.of(context).disabledColor,
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -230),
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: HexColor('#F9F9F9'),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Ionicons.pencil,
                                        size: 22,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Time to practice - Styling',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Assignment',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(
                                                    fontSize: 12,
                                                    color: HexColor('#333333')),
                                          )
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -200),
                                child: CustomListItem(
                                  number: '01',
                                  title: 'Introduction',
                                  duration: '45:00 mins',
                                  dicolor: Theme.of(context).disabledColor,
                                ),
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -225),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -250),
                                child: CustomListItem(
                                  number: '02',
                                  title: 'Introduction to UX',
                                  duration: '45:00 mins',
                                  dicolor: Theme.of(context).primaryColor,
                                ),
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -280),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -310),
                                child: CustomListItem(
                                  number: '03',
                                  title: 'Get Ready to Define',
                                  duration: '30:00 mins',
                                  dicolor: Theme.of(context).disabledColor,
                                ),
                              ),
                              Transform.translate(
                                  offset: const Offset(0, -335),
                                  child: VDivider()),
                              Transform.translate(
                                offset: const Offset(0, -360),
                                child: CustomListItem(
                                  number: '04',
                                  title: 'Why Are We Doing This',
                                  duration: '53:00 mins',
                                  dicolor: Theme.of(context).disabledColor,
                                ),
                              ),
                            ],
                          )
                        : Container(),
                    More
                        ? Column(
                            children: [
                              MoreList(
                                imagePath: ConstanceData.a53,
                                title: 'About this course',
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding: EdgeInsets.all(16),
                                        height: 400,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            )),
                                        child: ListView(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  'About this course',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(fontSize: 24),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  icon: Icon(
                                                    Ionicons.close,
                                                    size: 24,
                                                    color: HexColor('#1A1A1A'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Don’t believe me? I offer you a full money back guarantee within the first 30 days of purchasing the course.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Here’s what you get with the course: You’ll get access to the11 sections of the course that will teach you the fundamentals of drawing from the ground up. The course is supported with over 11 hours of clear content that I walk you through each step of the way.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'All at your fingers tips instantly.The course starts with the basics. You will get an in depth understanding of the fundamentals of drawing. Fundamentals are the most important part of creating professional art. You will learn everything from line fundamentals all the way up to highlight and shadows.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Next you’ll learn how perspective works and how to incorporate it into your art. You will be learning 1, 2, and 3 point perspective.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Once you’ve learned perspective you are going to learn how to create texture and apply it to your drawings.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Then you are going to learn how to draw from life. Observing life and drawing it is a very important skill when it comes to art.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'At this point you’ll be ready to start drawing the human face. We will spend a whole section learning how to draw the human face from different angles.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Next you’re going to learn how to draw the human figure.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Lastly you will gain access to the bonus section where I’ll teach you how I draw animation styled characters step by step.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#333333')),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MoreList(
                                imagePath: ConstanceData.a54,
                                title: 'Download course',
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MoreList(
                                imagePath: ConstanceData.a55,
                                title: 'Q&A',
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding: EdgeInsets.all(16),
                                        height: 400,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            )),
                                        child: ListView(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  'Q&A',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(fontSize: 24),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  icon: Icon(
                                                    Ionicons.close,
                                                    size: 24,
                                                    color: HexColor('#1A1A1A'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            QuestionList(
                                              txt1: '#Design',
                                              txt2: '#Sketch',
                                              lecture: 'Lectur 6',
                                              title:
                                                  'How to draw anime step by step?',
                                              img: ConstanceData.a60,
                                              mainText: 'Jennie Murphy',
                                              subText: '14/02/2020 • 12:30',
                                              msg: '12',
                                              like: '48',
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            QuestionList(
                                              txt1: '#Design',
                                              txt2: '#Beginners',
                                              lecture: 'Lectur 7',
                                              title:
                                                  'How to draw hyper realistic eyes Step by Step',
                                              img: ConstanceData.a60,
                                              mainText: 'Connie Steward',
                                              subText: '10/02/2020 • 09:24',
                                              msg: '10',
                                              like: '32',
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            QuestionList(
                                              txt1: '#Design',
                                              txt2: '#Beginners',
                                              lecture: 'Lectur 9',
                                              title:
                                                  'How to sketch a face from photo',
                                              img: ConstanceData.a62,
                                              mainText: 'Cody Russell',
                                              subText: '08/02/2020 • 17:30',
                                              msg: '16',
                                              like: '64',
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            MyButton(
                                              btnName: 'Add new question',
                                              click: () {
                                                showModalBottomSheet(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      padding:
                                                          EdgeInsets.all(16),
                                                      height: 400,
                                                      decoration: BoxDecoration(
                                                          color: Theme.of(
                                                                  context)
                                                              .scaffoldBackgroundColor,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    15),
                                                            topRight:
                                                                Radius.circular(
                                                                    15),
                                                          )),
                                                      child: ListView(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Text(
                                                                'New question',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium!
                                                                    .copyWith(
                                                                        fontSize:
                                                                            24),
                                                              ),
                                                              IconButton(
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                icon: Icon(
                                                                  Ionicons
                                                                      .close,
                                                                  size: 24,
                                                                  color: HexColor(
                                                                      '#1A1A1A'),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'Title',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .labelSmall!
                                                                .copyWith(
                                                                    fontSize:
                                                                        16),
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          MyTextField(
                                                              hintText:
                                                                  'Enter title question'),
                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          Text(
                                                            'Select lectures',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .labelSmall!
                                                                .copyWith(
                                                                    fontSize:
                                                                        16),
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          MyTextField(
                                                            hintText:
                                                                'Lectures',
                                                            suffix: Ionicons
                                                                .chevron_down,
                                                          ),
                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 12,
                                                                      right:
                                                                          12),
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              height: 120,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  border: Border.all(
                                                                      color: HexColor(
                                                                          '#EBEBEB'),
                                                                      width:
                                                                          1)),
                                                              child:
                                                                  TextFormField(
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                maxLines: 5,
                                                                textAlignVertical:
                                                                    TextAlignVertical
                                                                        .center,
                                                                cursorColor: Theme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .labelSmall!
                                                                    .copyWith(
                                                                        fontSize:
                                                                            16),
                                                                decoration:
                                                                    InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText:
                                                                      'Enter question details',
                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color:
                                                                              HexColor('AFAFAF')),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          MyButton(
                                                            btnName: 'Submit',
                                                            click: () {
                                                              showModalBottomSheet(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return Container(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            16),
                                                                    height: 400,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                Theme.of(context).scaffoldBackgroundColor,
                                                                            borderRadius: BorderRadius.only(
                                                                              topLeft: Radius.circular(15),
                                                                              topRight: Radius.circular(15),
                                                                            )),
                                                                    child:
                                                                        ListView(
                                                                      children: [
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: <Widget>[
                                                                            IconButton(
                                                                              onPressed: () {
                                                                                Navigator.of(context).pop();
                                                                              },
                                                                              icon: Icon(
                                                                                Ionicons.chevron_back,
                                                                                size: 24,
                                                                                color: HexColor('#1A1A1A'),
                                                                              ),
                                                                            ),
                                                                            Spacer(),
                                                                            Text(
                                                                              'Response',
                                                                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 24),
                                                                            ),
                                                                            Spacer(),
                                                                            IconButton(
                                                                              onPressed: () {
                                                                                Navigator.of(context).pop();
                                                                              },
                                                                              icon: Icon(
                                                                                Ionicons.close,
                                                                                size: 24,
                                                                                color: HexColor('#1A1A1A'),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              10,
                                                                        ),
                                                                        Container(
                                                                          padding:
                                                                              EdgeInsets.all(15),
                                                                          margin:
                                                                              EdgeInsets.all(5),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                HexColor('#FFFFFF'),
                                                                            borderRadius:
                                                                                BorderRadius.circular(15),
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                color: HexColor('#AFAFAF').withOpacity(0.5),
                                                                                offset: Offset(0, 2),
                                                                                blurRadius: 7,
                                                                                spreadRadius: 1,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                children: <Widget>[
                                                                                  Text(
                                                                                    '#Design',
                                                                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                          fontSize: 12,
                                                                                          color: HexColor('#D4D4D4'),
                                                                                        ),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5,
                                                                                  ),
                                                                                  Text(
                                                                                    '#Sketch',
                                                                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                          fontSize: 12,
                                                                                          color: HexColor('#D4D4D4'),
                                                                                        ),
                                                                                  ),
                                                                                  Spacer(),
                                                                                  Container(
                                                                                    alignment: Alignment.center,
                                                                                    height: 24,
                                                                                    width: 80,
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(10),
                                                                                      color: HexColor('#3F51B5'),
                                                                                    ),
                                                                                    child: Text(
                                                                                      'Lecture 8',
                                                                                      style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 12, color: HexColor('#FFFFFF')),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10,
                                                                              ),
                                                                              Text(
                                                                                'How to draw anime step by step?',
                                                                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                                                      fontSize: 18,
                                                                                      color: HexColor('#3F51B5'),
                                                                                    ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10,
                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  Image.asset(
                                                                                    ConstanceData.a60,
                                                                                    height: 40,
                                                                                    width: 40,
                                                                                  ),
                                                                                  SizedBox(width: 15),
                                                                                  Expanded(
                                                                                    child: Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Jennie Murphy',
                                                                                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                                                                fontSize: 15,
                                                                                              ),
                                                                                        ),
                                                                                        Text(
                                                                                          '14/02/2020 • 12:30',
                                                                                          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 12, color: HexColor('#AFAFAF')),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    '48',
                                                                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                          fontSize: 12,
                                                                                          color: HexColor('#333333'),
                                                                                        ),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5,
                                                                                  ),
                                                                                  Icon(
                                                                                    Ionicons.heart,
                                                                                    size: 16,
                                                                                    color: HexColor('#333333'),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 15,
                                                                              ),
                                                                              Row(
                                                                                children: <Widget>[
                                                                                  Text(
                                                                                    '1 Response',
                                                                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                          fontSize: 12,
                                                                                          color: HexColor('#333333'),
                                                                                        ),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 15,
                                                                                  ),
                                                                                  Expanded(
                                                                                      child: Container(
                                                                                    height: 1,
                                                                                    color: HexColor('#EBEBEB'),
                                                                                  )),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 15,
                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  Image.asset(
                                                                                    ConstanceData.a62,
                                                                                    height: 40,
                                                                                    width: 40,
                                                                                  ),
                                                                                  SizedBox(width: 15),
                                                                                  Expanded(
                                                                                    child: Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Judith Bell',
                                                                                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                                                                fontSize: 15,
                                                                                              ),
                                                                                        ),
                                                                                        Text(
                                                                                          '14/02/2020 • 12:35',
                                                                                          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 12, color: HexColor('#AFAFAF')),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Icon(
                                                                                    Ionicons.heart_outline,
                                                                                    size: 16,
                                                                                    color: HexColor('#333333'),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 15,
                                                                              ),
                                                                              Text(
                                                                                'Hi.',
                                                                                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                      fontSize: 12,
                                                                                    ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 3,
                                                                              ),
                                                                              Text(
                                                                                '1. Make Light Line Drawings First',
                                                                                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                      fontSize: 12,
                                                                                    ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 3,
                                                                              ),
                                                                              Text(
                                                                                '2. Use Guide/Construction Lines',
                                                                                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                      fontSize: 12,
                                                                                    ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 3,
                                                                              ),
                                                                              Text(
                                                                                '3. Plan Out Your Drawing & Draw Larger to Smaller',
                                                                                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                      fontSize: 12,
                                                                                    ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 3,
                                                                              ),
                                                                              Text(
                                                                                '4. Keep Different Parts of Your Drawing in the Same Stages of Completion',
                                                                                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                      fontSize: 12,
                                                                                    ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 15,
                                                                              ),
                                                                              Text(
                                                                                'Judith Bell',
                                                                                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                                                      fontSize: 12,
                                                                                    ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 20,
                                                                              ),
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8),
                                                                                child: Container(
                                                                                  padding: EdgeInsets.only(left: 12, right: 12),
                                                                                  alignment: Alignment.topLeft,
                                                                                  height: 120,
                                                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: HexColor('#EBEBEB'), width: 1)),
                                                                                  child: TextFormField(
                                                                                    keyboardType: TextInputType.multiline,
                                                                                    maxLines: 5,
                                                                                    textAlignVertical: TextAlignVertical.center,
                                                                                    cursorColor: Theme.of(context).primaryColor,
                                                                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 16),
                                                                                    decoration: InputDecoration(
                                                                                      border: InputBorder.none,
                                                                                      hintText: 'White your response',
                                                                                      hintStyle: TextStyle(color: HexColor('AFAFAF')),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 20,
                                                                              ),
                                                                              MyButton(btnName: 'Send', click: () {}),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MoreList(
                                imagePath: ConstanceData.a52,
                                title: 'Notes',
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MoreList(
                                imagePath: ConstanceData.a56,
                                title: 'Resources',
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding: EdgeInsets.all(16),
                                        height: 400,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            )),
                                        child: ListView(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  'Resource',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(fontSize: 24),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  icon: Icon(
                                                    Ionicons.close,
                                                    size: 24,
                                                    color: HexColor('#1A1A1A'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            ResourceList(
                                              img: ConstanceData.a63,
                                              mainText: 'Section 2',
                                              subText: '12 resource',
                                              bgcolor: HexColor('#ECFAF4'),
                                              bordcolor: HexColor('#CDF3E1'),
                                              onTap: () {
                                                showModalBottomSheet(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      padding:
                                                          EdgeInsets.all(16),
                                                      height: 400,
                                                      decoration: BoxDecoration(
                                                          color: Theme.of(
                                                                  context)
                                                              .scaffoldBackgroundColor,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    15),
                                                            topRight:
                                                                Radius.circular(
                                                                    15),
                                                          )),
                                                      child: ListView(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              IconButton(
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                icon: Icon(
                                                                  Ionicons
                                                                      .chevron_back,
                                                                  size: 24,
                                                                  color: HexColor(
                                                                      '#1A1A1A'),
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              Text(
                                                                'Resource',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium!
                                                                    .copyWith(
                                                                        fontSize:
                                                                            24),
                                                              ),
                                                              Spacer(),
                                                              IconButton(
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                icon: Icon(
                                                                  Ionicons
                                                                      .close,
                                                                  size: 24,
                                                                  color: HexColor(
                                                                      '#1A1A1A'),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          PdfList(
                                                            name:
                                                                'Don’t Make Me Think',
                                                            mb: '2 MB',
                                                            onPressed: () {},
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          PdfList(
                                                            name:
                                                                'Start with why',
                                                            mb: '8 MB',
                                                            onPressed: () {},
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          PdfList(
                                                            name:
                                                                'The Lean Startup',
                                                            mb: '6 MB',
                                                            onPressed: () {},
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            ResourceList(
                                              img: ConstanceData.a64,
                                              mainText: 'Section 3',
                                              subText: '1 resource',
                                              bgcolor: HexColor('#EDF6FF'),
                                              bordcolor: HexColor('#D0E8FF'),
                                              onTap: () {},
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            ResourceList(
                                              img: ConstanceData.a65,
                                              mainText: 'Section 4',
                                              subText: '8 resource',
                                              bgcolor: HexColor('#FFF9ED'),
                                              bordcolor: HexColor('#FFEFCF'),
                                              onTap: () {},
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            ResourceList(
                                              img: ConstanceData.a66,
                                              mainText: 'Section 5',
                                              subText: '6 resource',
                                              bgcolor: HexColor('#F6F1FF'),
                                              bordcolor: HexColor('#E7D9FF'),
                                              onTap: () {},
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            ResourceList(
                                              img: ConstanceData.a67,
                                              mainText: 'Section 7',
                                              subText: '6 resource',
                                              bgcolor: HexColor('#FFF1F1'),
                                              bordcolor: HexColor('#FFD9D9'),
                                              onTap: () {},
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            ResourceList(
                                              img: ConstanceData.a68,
                                              mainText: 'Section 8',
                                              subText: '6 resource',
                                              bgcolor: HexColor('#ECFAF4'),
                                              bordcolor: HexColor('#CDF3E1'),
                                              onTap: () {},
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            ResourceList(
                                              img: ConstanceData.a69,
                                              mainText: 'Section 9',
                                              subText: '6 resource',
                                              bgcolor: HexColor('#FFF9ED'),
                                              bordcolor: HexColor('#FFEFCF'),
                                              onTap: () {},
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MoreList(
                                imagePath: ConstanceData.a57,
                                title: 'Add course to favorites',
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MoreList(
                                imagePath: ConstanceData.a58,
                                title: 'Announcements',
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding: EdgeInsets.all(16),
                                        height: 400,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            )),
                                        child: ListView(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  'Announcements',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(fontSize: 24),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  icon: Icon(
                                                    Ionicons.close,
                                                    size: 24,
                                                    color: HexColor('#1A1A1A'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            AnnounceList(
                                              img: ConstanceData.a61,
                                              mainText: 'Daniel',
                                              subText: '14/02/2020 • 12:35',
                                              txt1:
                                                  'Her announcement confirmed (that) she would be resigning as prime minister.',
                                              txt2:
                                                  'The protests are a delayed reaction to last week\'s announcement.',
                                              txt3:
                                                  'The announcement took Washington and Paris by surprise, but Downing Street had been expecting it.',
                                              txt4:
                                                  'There was a deathly hush after she made the announcement.',
                                              txt5:
                                                  'This announcement follows months of inaction and delay.',
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            AnnounceList(
                                              img: ConstanceData.a61,
                                              mainText: 'Daniel',
                                              subText: '14/02/2020 • 12:35',
                                              txt1:
                                                  'Many people were surprised by the government\'s announcement that there will be a cut in taxes.',
                                              txt2:
                                                  ' I heard an announcement on the loudspeaker saying that the store was closing in 10 minutes.',
                                              txt3:
                                                  'The company president made an announcement about the merger.',
                                              txt4:
                                                  'He asked us to pay attention because he had an important announcement to make.  I saw their wedding .',
                                              txt5:
                                                  'This announcement follows months of inaction and delay.',
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MoreList(
                                imagePath: ConstanceData.a59,
                                title: 'Archive course',
                                onTap: () {},
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

class CustomListItem extends StatelessWidget {
  final String number;
  final String title;
  final String duration;

  final Color dicolor;

  const CustomListItem({
    Key? key,
    required this.number,
    required this.title,
    required this.duration,
    required this.dicolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: HexColor('#EBEBEB'), width: 7)),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: HexColor('#F9F9F9'),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Text(number, style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        duration,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
                Icon(Ionicons.download, size: 24, color: dicolor),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VDivider extends StatelessWidget {
  const VDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 75,
          width: 2,
          color: HexColor('#EBEBEB'),
        ),
      ],
    );
  }
}

class MoreList extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const MoreList({
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Row(
          children: <Widget>[
            Image.asset(
              imagePath,
              height: 24,
              width: 24,
            ),
            SizedBox(width: 15),
            Text(
              title,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 16,
                    color: HexColor('#1A1A1A'),
                  ),
            ),
          ],
        ));
  }
}

class ResourceList extends StatelessWidget {
  final String img;
  final String mainText;
  final String subText;
  final Color bgcolor;
  final Color bordcolor;
  final VoidCallback onTap;

  const ResourceList({
    super.key,
    required this.img,
    required this.mainText,
    required this.subText,
    required this.bgcolor,
    required this.bordcolor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                        ),
                  ),
                  Text(
                    subText,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 12, color: HexColor('#AFAFAF')),
                  ),
                ],
              ),
            ),
            Icon(
              Ionicons.chevron_forward,
              size: 24,
              color: HexColor('#1A1A1A'),
            )
          ],
        ),
      ),
    );
  }
}

class PdfList extends StatelessWidget {
  final String name;
  final String mb;
  final VoidCallback onPressed;

  const PdfList({
    super.key,
    required this.name,
    required this.mb,
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
            ConstanceData.a70,
            height: 48,
            width: 48,
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
                Row(
                  children: <Widget>[
                    Image.asset(
                      ConstanceData.a71,
                      height: 16,
                      width: 16,
                    ),
                    Text(
                      mb,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 15, color: HexColor('#AFAFAF')),
                    ),
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: onPressed,
            child: Container(
              alignment: Alignment.center,
              height: 24,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor('#3F51B5'),
              ),
              child: Text(
                'Open',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(fontSize: 12, color: HexColor('#FFFFFF')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnnounceList extends StatelessWidget {
  final String img;
  final String mainText;
  final String subText;
  final String txt1;
  final String txt2;
  final String txt3;
  final String txt4;
  final String txt5;

  const AnnounceList({
    super.key,
    required this.img,
    required this.mainText,
    required this.subText,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.txt4,
    required this.txt5,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: HexColor('#AFAFAF').withOpacity(0.5),
              offset: Offset(0, 2),
              blurRadius: 7,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  img,
                  height: 48,
                  width: 48,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mainText,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      Text(
                        subText,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontSize: 12, color: HexColor('#AFAFAF')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              txt1,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 16,
                  ),
            ),
            Text(
              txt2,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 16,
                  ),
            ),
            Text(
              txt3,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 16,
                  ),
            ),
            Text(
              txt4,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 16,
                  ),
            ),
            Text(
              txt5,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 16,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionList extends StatelessWidget {
  final String img;
  final String title;
  final String mainText;
  final String subText;
  final String msg;
  final String like;
  final String txt1;
  final String txt2;
  final String lecture;

  const QuestionList({
    super.key,
    required this.img,
    required this.title,
    required this.mainText,
    required this.subText,
    required this.msg,
    required this.like,
    required this.txt1,
    required this.txt2,
    required this.lecture,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: HexColor('#AFAFAF').withOpacity(0.5),
              offset: Offset(0, 2),
              blurRadius: 7,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Text(
                  txt1,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 12,
                        color: HexColor('#D4D4D4'),
                      ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  txt2,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 12,
                        color: HexColor('#D4D4D4'),
                      ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  height: 24,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#3F51B5'),
                  ),
                  child: Text(
                    lecture,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 12, color: HexColor('#FFFFFF')),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                    color: HexColor('#3F51B5'),
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  img,
                  height: 40,
                  width: 40,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mainText,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 15,
                            ),
                      ),
                      Text(
                        subText,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontSize: 12, color: HexColor('#AFAFAF')),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Ionicons.chatbubbles,
                  size: 16,
                  color: HexColor('#D4D4D4'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  msg,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 12,
                        color: HexColor('#D4D4D4'),
                      ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Ionicons.heart,
                  size: 16,
                  color: HexColor('#D4D4D4'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  like,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 12,
                        color: HexColor('#D4D4D4'),
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
