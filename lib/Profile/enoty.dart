import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Constance/theme.dart';

class Enoty extends StatefulWidget {
  const Enoty({super.key});

  @override
  State<Enoty> createState() => _EnotyState();
}

class _EnotyState extends State<Enoty> {
  bool isEnabled = true;
  bool isEnabled1 = false;
  bool isEnabled2 = true;
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
              'Email notifications',
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
                  height: 10,
                ),
                SwitchList(
                  label: 'Promotions, course recommendations',
                  value: isEnabled,
                  onChanged: (value) => setState(() => isEnabled = value),
                ),
                SizedBox(
                  height: 18,
                ),
                SwitchList(
                  label: 'Don\'t send me any promotional emails.',
                  value: isEnabled1,
                  onChanged: (value) => setState(() => isEnabled1 = value),
                ),
                SizedBox(
                  height: 18,
                ),
                SwitchList(
                  label: 'Announcements from instructors about courses.',
                  value: isEnabled2,
                  onChanged: (value) => setState(() => isEnabled2 = value),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SwitchList extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchList({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
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
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontSize: 16, color: HexColor('#333333')),
            ),
          ),
          SizedBox(width: 20,),
          CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: HexColor('#3F51B5'), // Color when the switch is on
          ),
        ],
      ),
    );
  }
}
