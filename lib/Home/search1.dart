// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';

import '../Constance/theme.dart';

class Search1 extends StatefulWidget {
  const Search1({super.key});

  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: InkWell(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        hoverColor: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Ionicons.chevron_back,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      alignment: Alignment.center,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(context).scaffoldBackgroundColor),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Theme.of(context).primaryColor,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontSize: 16),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Design',
                            hintStyle: TextStyle(color: HexColor('#AFAFAF')),
                            prefixIcon: Icon(
                              Ionicons.search,
                              size: 24,
                              color: Theme.of(context).primaryColor,
                            )),
                      ),
                    ),
                  ),
                  Text(
                    'Cancel',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).padding.bottom + 20),
              children: [
                Text(
                  'Suggest result',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      ConstanceData.S55,
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: RichText(
                      text: TextSpan(
                        text: 'UI ',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: Theme.of(context).disabledColor,
                            fontSize: 14),
                        children: [
                          TextSpan(
                              text: 'Design',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    fontSize: 14,
                                  ))
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: HexColor('#EBEBEB'),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      ConstanceData.S56,
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: RichText(
                      text: TextSpan(
                        text: 'UX ',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: Theme.of(context).disabledColor,
                            fontSize: 14),
                        children: [
                          TextSpan(
                              text: 'Design',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    fontSize: 14,
                                  ))
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: HexColor('#EBEBEB'),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      ConstanceData.S57,
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: RichText(
                      text: TextSpan(
                        text: 'Product ',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: Theme.of(context).disabledColor,
                            fontSize: 14),
                        children: [
                          TextSpan(
                              text: 'Design',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    fontSize: 14,
                                  ))
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: HexColor('#EBEBEB'),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      ConstanceData.S58,
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: RichText(
                      text: TextSpan(
                        text: 'Learn Great ',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: Theme.of(context).disabledColor,
                            fontSize: 14),
                        children: [
                          TextSpan(
                              text: 'Design',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    fontSize: 14,
                                  ))
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: HexColor('#EBEBEB'),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
