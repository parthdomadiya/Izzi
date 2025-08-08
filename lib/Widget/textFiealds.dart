// ignore_for_file: file_names, override_on_non_overriding_member, unused_import, deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors, prefer_if_null_operators, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final IconData? suffix;
  final TextInputType keyboardtype;
  final bool hideTextfild;

  const MyTextField({
    super.key,
    required this.hintText,
    this.keyboardtype = TextInputType.text,
    this.hideTextfild = false,
    this.suffix,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        alignment: Alignment.center,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: HexColor('#EBEBEB'), width: 1)),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Theme.of(context).primaryColor,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 16),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: TextStyle(color: HexColor('AFAFAF')),
              suffixIcon: Icon(
                widget.suffix,
                size: 24,
                color: Theme.of(context).disabledColor,
              )),
        ),
      ),
    );
  }
}

class MyTextField1 extends StatefulWidget {
  final String hintText;
  const MyTextField1({
    super.key,
    required this.hintText,
  });

  @override
  State<MyTextField1> createState() => _MyTextField1State();
}

class _MyTextField1State extends State<MyTextField1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: HexColor('#EBEBEB'), width: 1)),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Theme.of(context).primaryColor,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}

class MyTextField2 extends StatefulWidget {
  final String hintText;
  final Color color;
  const MyTextField2({
    super.key,
    required this.hintText,
    required this.color,
  });

  @override
  State<MyTextField2> createState() => _MyTextField2State();
}

class _MyTextField2State extends State<MyTextField2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: widget.color),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Theme.of(context).primaryColor,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
