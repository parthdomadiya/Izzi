// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final VoidCallback click;
  const MyButton({
    super.key,
    required this.btnName,
    required this.click,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        click();
      },
      hoverColor: Colors.white,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: Text(btnName,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white, fontSize: 16)),
        ),
      ),
    );
  }
}

class MyButtonO extends StatelessWidget {
  final Color color;
  final Color icolor;
  final Color tcolor;
  final IconData? icon;
  final String title;
  const MyButtonO({
    required this.color,
    required this.icolor,
    this.icon,
    required this.title,
    required this.tcolor,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: color),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 24,
              color: icolor,
            ),
            SizedBox(width: 12,),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 15, color: tcolor)),
          ],
        ),
      ),
    );
  }
}

class MyButtonO1 extends StatelessWidget {
  final Color color;
  final Color tcolor;
  final String title;
  const MyButtonO1({
    required this.title,
    required this.tcolor,
    required this.color
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: color),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 15, color: tcolor)),
        ),
      ),
    );
  }
}


