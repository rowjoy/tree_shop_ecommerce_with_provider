

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';


class ProdactScreen extends StatefulWidget {
  const ProdactScreen({super.key});

  @override
  State<ProdactScreen> createState() => _ProdactScreenState();
}

class _ProdactScreenState extends State<ProdactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: HexColor(AppColors.seGreenColor).withOpacity(0.3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8, top: 16),
          child: Column(
            children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Expanded(
                     child: Container(
                       height: 60,
                       //width: MediaQuery.of(context).size.width / 1.3,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(5),
                         boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                       ),
                       child: Center(
                         child: TextField(
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.search,color: Colors.black,),
                             hintText: "Search..",
                             border: InputBorder.none,
                           ),
                         ),
                       ),
                     ),
                   ),
                   IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.notifications),
                  ),
                 ],
               ),
               SizedBox(height: 30,),
               Container(
                 height: 250,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   color: HexColor(AppColors.greenColor).withOpacity(0.5),
                   borderRadius: BorderRadius.circular(5),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                        Expanded(
                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 height: 45,
                                 width: 150,
                                  decoration: BoxDecoration(
                                     color: HexColor(AppColors.seGreenColor).withOpacity(0.5),
                                     borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Tree__",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor(AppColors.whiteColor),
                                        letterSpacing: 5,
                                      ),
                                    ),
                                  ),
                               ),
                               SizedBox(height: 8,),
                               Text(
                                  "Give The Best Care For Your Plants",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: HexColor(AppColors.whiteColor),
                                  ),
                                ),
                             ],
                           ),
                        ),
                      AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset("assets/images/onboard_tree.png",),
                      ),
                     ],
                   ),
                 ),
               )
            ],
          ),
        ),
      ),
    );
  }
}