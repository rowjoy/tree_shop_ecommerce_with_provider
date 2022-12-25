// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace


import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
import 'package:tree_shop/modules/views/cart_screen.dart';
import 'package:tree_shop/modules/views/prodact_screen.dart';
import 'package:tree_shop/modules/views/profile_screen.dart';
class BaseLayoutScreen extends StatefulWidget {
  const BaseLayoutScreen({super.key});

  @override
  State<BaseLayoutScreen> createState() => _BaseLayoutScreenState();
}

int selectPage = 1;
List<Widget> pages = [
  CartScreen(),
  ProdactScreen(),
  ProfileScreen(),
];


class _BaseLayoutScreenState extends State<BaseLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton.large(
      onPressed: (){
        setState(() {
          selectPage = 1;
        });
      },
        backgroundColor: HexColor(AppColors.greenColor),
        child: Center(
          child: Icon(Icons.home ,color: selectPage == 1 ? Colors.red : Colors.white ,),
        ) ,
      ),
      bottomNavigationBar: BottomAppBar(
        color: HexColor(AppColors.greenColor),
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             tapButton(context, "Cart", Icons.shopping_cart , 0),
             SizedBox(width: MediaQuery.of(context).size.width / 9,),
             tapButton(context, "Profile", Icons.person , 2),
          ],
        ),
      ) ,
    
      body: pages[selectPage],
    );
  }

 Widget tapButton(BuildContext context , String? title , IconData? icon, int index ) {
    return  InkWell(
      onTap: (){
        setState(() {
           selectPage = index;
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width / 4 ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: selectPage == index ? Colors.red : Colors.white,),
            Text("$title", style: TextStyle(
              color:  selectPage == index ? Colors.red :  Colors.white,
              fontSize: 18,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}