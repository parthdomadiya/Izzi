// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Constance/theme.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
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
            margin: EdgeInsets.only(left:15),
            child: Text(
              'Terms of use',
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
                  height: 5,
                ),
                Text(
                  'Tempor anim esse eu voluptate laborum aliquip nostrud reprehenderit est. Proident fugiat non velit laboris in cupidatat esse aliquip deserunt laboris exercitation magna culpa mollit. Adipisicing consectetur sunt exercitation dolor voluptate aliqua amet aliqua nisi laboris voluptate esse et. Culpa in duis cillum nulla nisi adipisicing incididunt aute voluptate proident consequat eu duis. Amet dolor consectetur elit occaecat fugiat dolor aliquip sunt ex nulla aliquip aliqua velit quis.',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 16,
                        color: HexColor('#1A1A1A'),
                      ),
                ),
                Text(
                  'Adipisicing labore ex et velit ea laborum dolore id ad. Cupidatat mollit veniam consequat labore aliquip amet fugiat id. Adipisicing excepteur amet sit labore sint in qui fugiat aliquip fugiat sit quis consequat. Ea nostrud cupidatat ex in quis.',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 16,
                        color: HexColor('#1A1A1A'),
                      ),
                ),
                Text(
                  'Aliquip aute reprehenderit tempor elit tempor in laborum elit. Fugiat adipisicing ad eiusmod elit dolor consequat laborum velit voluptate pariatur eiusmod consequat esse. Amet magna qui labore velit sunt non elit ut ullamco velit occaecat commodo eiusmod. Ex fugiat do ut eiusmod deserunt. Elit magna deserunt duis Lorem nisi elit ad nulla dolor do dolore. Aliqua reprehenderit aliquip consectetur occaecat elit voluptate veniam et.',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 16,
                        color: HexColor('#1A1A1A'),
                      ),
                ),
                Text(
                  'Duis nostrud ad excepteur ipsum veniam adipisicing occaecat nisi quis sunt culpa mollit dolor velit. Non anim do minim aliquip proident consequat culpa et cillum consequat. Aute voluptate proident ea eu sunt amet. Excepteur culpa nisi fugiat consectetur. Cillum laborum reprehenderit ea eiusmod excepteur commodo sunt et ad pariatur.',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 16,
                        color: HexColor('#1A1A1A'),
                      ),
                ),
                Text(
                  'Aliquip magna consectetur et sint consequat nisi nulla aliqua nulla irure. Laborum sunt nisi eu ut dolor nostrud. Laboris reprehenderit minim laborum deserunt sit amet culpa cupidatat culpa commodo aliqua eu. Sit enim anim quis ad cupidatat duis eu amet et aute. Nostrud consequat occaecat aute consectetur consectetur eu incididunt anim tempor. Amet sint minim dolore elit culpa culpa non aliqua aute aliqua elit sint.',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 16,
                        color: HexColor('#1A1A1A'),
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
