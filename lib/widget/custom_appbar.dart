// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
     backgroundColor: HexColor(AppColors.whiteColor),
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(40),
          child: Icon(Icons.auto_awesome_mosaic_sharp, color: HexColor(AppColors.greenColor),),
        ),
      ),
     actions: [
       Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(50),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.shopping_cart,color: HexColor(AppColors.greenColor),),
                        )
                      ),
                      Transform.translate(
                        offset: Offset(30, 0.5),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.red,
                          child: Text("0"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 32,),
                  Stack(
                    clipBehavior: Clip.antiAlias,
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      Transform.translate(
                        offset: Offset(32, 4.0),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: HexColor(AppColors.greenColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
     ],
    );
  }
}