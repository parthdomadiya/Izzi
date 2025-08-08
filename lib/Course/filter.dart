// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Bottom/bottom.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Widget/buttons.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _isChecked = true;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;

  bool _isChecked6 = false;
  bool _isChecked7 = false;
  bool _isChecked8 = false;
  bool _isChecked9 = false;

  bool _isChecked10 = false;
  bool _isChecked11 = false;

  bool _isChecked12 = false;
  bool _isChecked13 = false;
  bool _isChecked14 = false;
  bool _isChecked15 = false;

  bool _isChecked16 = false;
  bool _isChecked17 = false;
  bool _isChecked18 = false;
  bool _isChecked19 = false;

  bool _isChecked20 = false;
  bool _isChecked21 = false;
  bool _isChecked22 = false;
  bool _isChecked23 = false;

  bool _isChecked24 = false;
  bool _isChecked25 = false;
  bool _isChecked26 = false;
  bool _isChecked27 = false;

  bool _isChecked28 = false;
  bool _isChecked29 = false;
  bool _isChecked30 = false;
  bool _isChecked31 = false;

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
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    'Clear',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 16),
                  ),
                )
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
                'Filter',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Subcategories',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Game Design (2.313)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked1 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Fashion (4.236)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked2 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '3D animation (499)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked3 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Graphics design (799)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked4,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked4 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Web design (299)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked5,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked5 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'User Experience (322)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Level',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked6,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked6 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'All level (213)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked7,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked7 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Beginner (1.299)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked8,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked8 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Intermediate (364)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked9,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked9 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Expert (199)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Price',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked10,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked10 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Paid (12.099)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked11,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked11 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Free (213)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Features',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked12,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked12 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Caption (213)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked13,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked13 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Quizzes (1.299)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked14,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked14 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Coding Exercises (364)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked15,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked15 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Practice tests (399)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Rating',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked16,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked16 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '4.5 & up (23.173)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked17,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked17 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '4.0 & up (1.625)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked18,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked18 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '3.5 & up (399)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked19,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked19 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '3.0 & up (28)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Video duration',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked20,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked20 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '0-2 hours (10.377)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked21,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked21 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '3-6 hours (1.196)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked22,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked22 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '7-16 hours (5.331)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked23,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked23 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '17+ hours (122)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Language',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked24,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked24 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'English (32.477)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked25,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked25 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Portugues (1.785)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked26,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked26 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Espanol (331)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked27,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked27 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'France (122)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked28,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked28 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Italia (344)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked29,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked29 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Polski (189)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked30,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked30 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Japan (479)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked31,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked31 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Nederlands (267)',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
            ],
          )),
          Padding(
            padding: EdgeInsets.all(20),
            child: MyButton(
                btnName: 'Apply',
                click: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BottomScreen(),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
