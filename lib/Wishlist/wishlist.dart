// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';

import '../Constance/theme.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wishlist',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 24,
                          color: HexColor('#1A1A1A'),
                        ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.search_outline,
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
                  bottom: MediaQuery.of(context).padding.bottom + 80),
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        ConstanceData.a33,
                        height: 190,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Image.asset(
                        ConstanceData.a34,
                        height: 190,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        ConstanceData.a35,
                        height: 190,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Image.asset(
                        ConstanceData.a36,
                        height: 190,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        ConstanceData.a37,
                        height: 190,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Image.asset(
                        ConstanceData.a38,
                        height: 190,
                        fit: BoxFit.fill,
                      ),
                    ),
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
