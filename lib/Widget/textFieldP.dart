// ignore_for_file: file_names, override_on_non_overriding_member, unused_import, deprecated_member_use, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:izzi/Constance/constance.dart';
import '../Constance/theme.dart';

class MyTextFieldP extends StatefulWidget {
  final String hintText;
  // final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardtype;
  final bool hideTextfild;

  const MyTextFieldP({
    super.key,
    required this.hintText,
    // this.prefixIcon,
    this.suffixIcon,
    this.keyboardtype = TextInputType.text,
    this.hideTextfild = false,
  });

  @override
  State<MyTextFieldP> creaarcodeate() => _MyTextFieldPState();

  @override
  _MyTextFieldPState createState() => _MyTextFieldPState();
}

class _MyTextFieldPState extends State<MyTextFieldP> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(color: HexColor('#EBEBEB'), width: 1),
          ),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            cursorColor: Theme.of(context).primaryColor,
            style:
                Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 16),
            obscureText: passwordVisible,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Password",
              hintStyle: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontSize: 14, color: HexColor('#AFAFAF')),
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: HexColor("#AFAFAF"),
                  size: 24,
                ),
                onPressed: () {
                  setState(
                    () {
                      passwordVisible = !passwordVisible;
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
