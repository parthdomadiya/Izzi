// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Course/fdetail1.dart';

import '../Constance/theme.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
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
                children: [
                  Text(
                    'My course',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 24,
                          color: HexColor('#1A1A1A'),
                        ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.search_outline,
                      size: 24,
                      color: HexColor('#1A1A1A'),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(14),
                              height: 470,
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  )),
                              child: Column(
                                children: [
                                  Text(
                                    'Favourite course',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            fontSize: 20,
                                            color: HexColor('#007AFF')),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    color: HexColor('#EBEBEB'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Archives course',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            fontSize: 20,
                                            color: HexColor('#007AFF')),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    color: HexColor('#EBEBEB'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Downloaded course',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            fontSize: 20,
                                            color: HexColor('#007AFF')),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    color: HexColor('#EBEBEB'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'All course',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            fontSize: 20,
                                            color: HexColor('#007AFF')),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Cancel',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontSize: 20,
                                              color: HexColor('#007AFF')),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    icon: Icon(
                      Ionicons.funnel_outline,
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
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                  top: 0,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).padding.bottom + 20),
              children: [
                CourseList(
                  imagePath: ConstanceData.a40,
                  title: 'UX Strategy',
                  duration: '1 hours 20 min',
                  trailingimg: ConstanceData.a39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Fdetail1(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CourseList(
                  imagePath: ConstanceData.a41,
                  title: 'Learn Sketch',
                  duration: '2 hours 30 min',
                  trailingimg: ConstanceData.a39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Fdetail1(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CourseList(
                  imagePath: ConstanceData.a42,
                  title: 'Design Thinking',
                  duration: '3 hours 40 min',
                  trailingimg: ConstanceData.a39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Fdetail1(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CourseList(
                  imagePath: ConstanceData.a43,
                  title: 'Work with pen & paper',
                  duration: '1 hours 20 min',
                  trailingimg: ConstanceData.a39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Fdetail1(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CourseList(
                  imagePath: ConstanceData.a44,
                  title: 'Learning Axure RP 8',
                  duration: '1 hours 50 min',
                  trailingimg: ConstanceData.a39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Fdetail1(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CourseList(
                  imagePath: ConstanceData.a45,
                  title: 'Learn Figma Basic',
                  duration: '20 hours',
                  trailingimg: ConstanceData.a39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Fdetail1(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CourseList(
                  imagePath: ConstanceData.a41,
                  title: 'Game Development',
                  duration: '16 hours 20 min',
                  trailingimg: ConstanceData.a39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Fdetail1(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 70),
            child: CourseList(
              imagePath: ConstanceData.a41,
              title: 'Learn Sketch',
              duration: '2 hours 30 min',
              trailingimg: ConstanceData.a46,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Fdetail1(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CourseList extends StatelessWidget {
  final String imagePath;
  final String title;
  final String duration;
  final String trailingimg;
  final VoidCallback onTap;

  const CourseList({
    required this.imagePath,
    required this.title,
    required this.duration,
    required this.trailingimg,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: HexColor('#AFAFAF').withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, 2),
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
                    title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                          color: HexColor('#1A1A1A'),
                        ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    duration,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 15,
                          color: HexColor('#AFAFAF'),
                        ),
                  ),
                ],
              ),
            ),
            Image.asset(
              trailingimg,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
