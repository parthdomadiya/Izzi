// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:izzi/Constance/constance.dart';
import 'package:izzi/Constance/theme.dart';
import 'package:izzi/Intro/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                buildPage(
                  image: Image.asset(
                    ConstanceData.S1,
                    height: 204,
                    width: 300,
                  ),
                  title: 'How to start',
                  description:
                      'Esse anim deserunt sit eu fugiat amet sint eiusmod laboris aliqua. Voluptate esse cupidatat in laborum officia',
                ),
                buildPage(
                  image: Image.asset(
                    ConstanceData.S2,
                    height: 204,
                    width: 300,
                  ),
                  title: 'Learning made easy',
                  description:
                      'Esse anim deserunt sit eu fugiat amet sint eiusmod laboris aliqua. Voluptate esse cupidatat in laborum officia',
                ),
                buildPage(
                  image: Image.asset(
                    ConstanceData.S3,
                    height: 204,
                    width: 300,
                  ),
                  title: 'Anytime & anywhere',
                  description:
                      'Esse anim deserunt sit eu fugiat amet sint eiusmod laboris aliqua. Voluptate esse cupidatat in laborum officia',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: Theme.of(context).primaryColor,
                    dotColor: Theme.of(context).disabledColor,
                    dotHeight: 6,
                    dotWidth: 6,
                  ),
                  onDotClicked: (index) {
                    _controller.animateToPage(index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Welcome(),
                      ),
                    );
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Theme.of(context).primaryColor),
                    child: Icon(
                      Ionicons.chevron_forward,
                      size: 24,
                      color: HexColor('#FFFFFF'),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Expanded(
          //           child: MyButton1(
          //               btnName: 'Register',
          //               click: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (_) => SignupScreen(),
          //                   ),
          //                 );
          //               })),
          //       SizedBox(
          //         width: 12,
          //       ),
          //       Expanded(
          //           child: MyButton(
          //               btnName: 'Login',
          //               click: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (_) => LoginScreen(),
          //                   ),
          //                 );
          //               })),
          //     ],
          //   ),
          // ),
        ]),
      ),
    );
  }
}

class buildPage extends StatelessWidget {
  final String title;
  final String description;
  final Image image;
  const buildPage(
      {super.key,
      required this.title,
      required this.description,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                ConstanceData.Logo,
                height: 40,
                width: 62,
              ),
              Text(
                'Skip',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(fontSize: 16),
              )
            ],
          ),
          image,
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(height: 10),
                Text(
                  description,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
