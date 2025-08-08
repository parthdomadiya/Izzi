// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Bottom/bottom.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Home/addcard.dart';
import 'package:izzi/Widget/buttons.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
                'Checkout',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Select payment method',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).primaryColor),
                          child: Row(
                            children: [
                              Icon(
                                Ionicons.card,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Card',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: HexColor('#EBEBEB'), width: 1),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                ConstanceData.S41,
                                height: 24,
                                width: 26,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Visa',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 16,
                                        color: Theme.of(context).disabledColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: HexColor('#EBEBEB'), width: 1),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                ConstanceData.S42,
                                height: 24,
                                width: 26,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Mastercard',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 16,
                                        color: Theme.of(context).disabledColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Select payment method',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      ConstanceData.S43,
                      height: 175,
                      width: 270,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      ConstanceData.S44,
                      height: 175,
                      width: 270,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AddCard(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'Add new card',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontSize: 15, color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Ionicons.add,
                      size: 22,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              )
            ],
          )),
          Padding(
            padding: EdgeInsets.all(20),
            child: MyButton(
                btnName: 'Pay now',
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
