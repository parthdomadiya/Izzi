// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:izzi/Constance/theme.dart';

class Cat extends StatefulWidget {
  final String? imagePath;
  final Color bg;
  final Color bord;
  final String title;
  final Color tcolor;
  const Cat({
    required this.imagePath,
    required this.bg,
    required this.bord,
    required this.title,
    required this.tcolor,
  });

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
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
            Image.asset(
              widget.imagePath!,
              height: 24,
              width: 26,
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

class Friend extends StatefulWidget {
  final Color bg;
  final String title;
  final Color tcolor;
  const Friend({
    required this.bg,
    required this.title,
    required this.tcolor,
  });
  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          alignment: Alignment.center,
          height: 36,
          width: 108,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: widget.bg,
          ),
          child: Text(
            widget.title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 15, color: widget.tcolor),
          )),
    );
  }
}

class Icon1 extends StatefulWidget {
  final IconData? icon;
  final String? imagePath;
  final Color? icolor;
  final Color bg;
  const Icon1({
    this.icon,
    this.imagePath,
    required this.bg,
    this.icolor,
  });

  @override
  State<Icon1> createState() => _Icon1State();
}

class _Icon1State extends State<Icon1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: widget.bg,
        ),
        child: Center(
          child: widget.imagePath != null
              ? Image.asset(widget.imagePath!,height: 24,width: 24,) // Assuming imagePath is a String
              : widget.icon != null
                  ? Icon(widget.icon,size: 24,color: widget.icolor,) // Assuming icon is of type IconData
                  : Container(), // Fallback to an empty container if both are null
        ));
  }
}

class Icon2 extends StatefulWidget {
  final IconData? icon;
  final String? imagePath;
  const Icon2({
    this.icon,
    this.imagePath,
  });

  @override
  State<Icon2> createState() => _Icon2State();
}

class _Icon2State extends State<Icon2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: HexColor('#F9F9F9'),
         boxShadow: [
            BoxShadow(
              color: HexColor("#E4E4E4"),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(5.0, 5.0),
            )
          ],
      ),
      child: Image.asset(
        widget.imagePath!,
        height: 24,
        width: 24,
        fit: BoxFit.cover, // Adjust this as needed
      ),
    );
  }
}

class Icon3 extends StatefulWidget {
  final String title;
  
  const Icon3({
   required this.title,
  });

  @override
  State<Icon3> createState() => _Icon3State();
}

class _Icon3State extends State<Icon3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Theme.of(context).primaryColor,
         
      ),
      child:Text(widget.title,style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 12,color: HexColor('#FFFFFF')),)
    );
  }
}

class Chip1 extends StatefulWidget {
  final String title;
  const Chip1({
    required this.title,
  });

  @override
  State<Chip1> createState() => _Chip1State();
}

class _Chip1State extends State<Chip1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 46,
      padding: EdgeInsets.only(left: 13, right: 13),
      decoration: BoxDecoration(
        border: Border.all(color: HexColor('#EBEBEB'),width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        widget.title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 16,
              color: Theme.of(context).primaryColor
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
