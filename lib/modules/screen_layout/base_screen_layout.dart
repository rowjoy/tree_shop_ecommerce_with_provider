// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace


import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
import 'package:tree_shop/modules/views/card_screen.dart';
import 'package:tree_shop/modules/views/like_prodect_screen.dart';
import 'package:tree_shop/modules/views/live_chat_screen.dart';
import 'package:tree_shop/modules/views/prodact_screen.dart';
import 'package:tree_shop/modules/views/profile_screen.dart';

import '../../widget/custom_appbar.dart';
class BaseLayoutScreen extends StatefulWidget {
  const BaseLayoutScreen({super.key});

  @override
  State<BaseLayoutScreen> createState() => _BaseLayoutScreenState();
}

getGradient(Color color) {
  return LinearGradient(
      colors: [color.withOpacity(0.5), color.withOpacity(0.1)],
      stops: const [0.0, 0.7]);
}

List<Tabs> tabs = [
  Tabs(Icons.home,"Home",HexColor(AppColors.greenColor),  getGradient(HexColor(AppColors.greenColor))),
  Tabs(Icons.favorite,"Like",HexColor(AppColors.greenColor),  getGradient(HexColor(AppColors.greenColor))),
  Tabs(Icons.shopping_cart,"Cart",HexColor(AppColors.greenColor),  getGradient(HexColor(AppColors.greenColor))),
  Tabs(Icons.chat,"Chat now",HexColor(AppColors.greenColor),  getGradient(HexColor(AppColors.greenColor))),
];


int selectPage = 0;
List<Widget> pages = [
  ProdactScreen(),
  LikeProdectScreen(),
  CartScreen(),
  LiveChatScreen(),
];



class _BaseLayoutScreenState extends State<BaseLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: CubertoBottomBar(
          padding: EdgeInsets.all(8.0) ,
          inactiveIconColor: Colors.black,
          tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
          // By default its CubertoTabStyle.STYLE_NORMAL
          selectedTab: selectPage, // By default its 0, Current page which is fetched when a tab is clickd, should be set here so as the change the tabs, and the same can be done if willing to programmatically change the tab.// By default its NO_DRAWER (Availble START_DRAWER and END_DRAWER as per where you want to how the drawer icon in Cuberto Bottom bar)
          tabs: tabs.map((value) => TabData(
                  iconData: value.icon,
                  title: value.title,
                  tabColor: value.color,
                  tabGradient: value.gradient)).toList(),
          onTabChangedListener: (position, title, color) {
            setState(() {
               selectPage = position;
               print(title);
               print(color);
            });
          },
        ),
      ),
      body: pages[selectPage],
    );
  }
}










class Tabs {
  final IconData icon;
  final String title;
  final Color color;
  final Gradient gradient;

  Tabs(this.icon, this.title, this.color,this.gradient);

}