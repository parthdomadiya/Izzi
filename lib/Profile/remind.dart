// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Constance/theme.dart';

class Remind extends StatefulWidget {
  const Remind({super.key});

  @override
  State<Remind> createState() => _RemindState();
}

class _RemindState extends State<Remind> {
  bool isEnabled = true;
  bool d1 = true;
  bool d2 = true;
  bool d3 = true;
  bool d4 = true;
  bool d5 = true;
  bool d6 = false;
  bool d7 = false;
  bool d8 = true;
  bool d9 = false;
  bool d10 = false;
  bool d11 = false;
  bool d12 = false;
  bool d13 = false;

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
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Allow reminders',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 24,
                          color: HexColor('#1A1A1A'),
                        ),
                  ),
                  CupertinoSwitch(
                    value: isEnabled,
                    onChanged: (value) => setState(() => isEnabled = value),
                    activeColor:
                        HexColor('#3F51B5'), // Color when the switch is on
                  ),
                ],
              )),
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
                Text(
                  'Frequency',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18,
                        color: HexColor('#1A1A1A'),
                      ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor('#AFAFAF').withOpacity(0.5),
                        offset: Offset(0, 2),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'DAY',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                              color: HexColor('#AFAFAF'),
                            ),
                      ),
                      CheckboxList(
                        label: 'Monday',
                        value: d1,
                        onChanged: (value) => setState(() => d1 = value!),
                      ),
                      CheckboxList(
                        label: 'Tuesday',
                        value: d2,
                        onChanged: (value) => setState(() => d2 = value!),
                      ),
                      CheckboxList(
                        label: 'Wednesday',
                        value: d3,
                        onChanged: (value) => setState(() => d3 = value!),
                      ),
                      CheckboxList(
                        label: 'Thursday',
                        value: d4,
                        onChanged: (value) => setState(() => d4 = value!),
                      ),
                      CheckboxList(
                        label: 'Friday',
                        value: d5,
                        onChanged: (value) => setState(() => d5 = value!),
                      ),
                      CheckboxList(
                        label: 'Saturday',
                        value: d6,
                        onChanged: (value) => setState(() => d6 = value!),
                      ),
                      CheckboxList(
                        label: 'Sunday',
                        value: d7,
                        onChanged: (value) => setState(() => d7 = value!),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor('#AFAFAF').withOpacity(0.5),
                        offset: Offset(0, 2),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'TIME',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                              color: HexColor('#AFAFAF'),
                            ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CheckboxList(
                        label: 'Monday',
                        time: '06:00 AM',
                        value: d8,
                        onChanged: (value) => setState(() => d8 = value!),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CheckboxList(
                        label: 'Mid-morning',
                        time: '09:00 AM',
                        value: d9,
                        onChanged: (value) => setState(() => d9 = value!),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CheckboxList(
                        label: 'Noon',
                        time: '12:00 AM',
                        value: d10,
                        onChanged: (value) => setState(() => d10 = value!),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CheckboxList(
                        label: 'Afternoon',
                        time: '03:00 AM',
                        value: d11,
                        onChanged: (value) => setState(() => d11 = value!),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CheckboxList(
                        label: 'Evening',
                        time: '06:00 AM',
                        value: d12,
                        onChanged: (value) => setState(() => d12 = value!),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CheckboxList(
                        label: 'Night',
                        time: '09:00 AM',
                        value: d13,
                        onChanged: (value) => setState(() => d13 = value!),
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

class CheckboxList extends StatelessWidget {
  final String label;
  final String? time;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CheckboxList({
    super.key,
    required this.label,
    this.time,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16, color: HexColor('#1A1A1A')),
              ),
              if (time != null)
                Text(
                  time!,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 12, color: HexColor('#AFAFAF')),
                ),
            ],
          ),
        ),
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: HexColor('#3F51B5'),
          checkColor: Colors.white,
          side: BorderSide(color: HexColor('#EBEBEB')),
        ),
      ],
    );
  }
}
