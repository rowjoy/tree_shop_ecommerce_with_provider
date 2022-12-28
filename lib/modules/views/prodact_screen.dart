

// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:ui';

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
  List<String> categories = ["Rose", "Water Lily", "Beli flower" , "Sunflower" , "Marigold"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: HexColor(AppColors.seGreenColor).withOpacity(0.3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Expanded(
                     child: Container(
                       height: 60,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         border: Border.all(width: 2, color: HexColor(AppColors.blackColor))
                       ),
                       child: Center(
                         child: TextField(
                           style: TextStyle(color: HexColor(AppColors.blackColor)),
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.search,color: HexColor(AppColors.blackColor),),
                             hintText: "Search..",
                             hintStyle: TextStyle(
                               color: HexColor(AppColors.blackColor),
                               fontSize: 18,
                               letterSpacing: 2,
                             ),
                             border: InputBorder.none,
                           ),
                         ),
                       ),
                     ),
                   ),
                   IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.notifications,
                      color: HexColor(AppColors.blackColor),
                    ),
                  ),
                 ],
               ),
               SizedBox(height: 30,),
               Container(
                 height: 250,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   border: Border.all(width: 1, color: HexColor(AppColors.blackColor)),
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
                                     borderRadius: BorderRadius.circular(30),
                                     border: Border.all(width: 1, color: HexColor(AppColors.blackColor))
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Tree__",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor(AppColors.blackColor),
                                        letterSpacing: 5,
                                      ),
                                    ),
                                  ),
                               ),
                               SizedBox(height: 16,),
                               Text(
                                  "Give The Best Care For Your Plants",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2,
                                    color: HexColor(AppColors.blackColor),
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
               ),
              SizedBox(height: 16,),
               Text("Categories",
                style: TextStyle(
                  color: HexColor(AppColors.blackColor),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 22,
                ),
               ),
               Container(
                 height: 80,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   reverse: true,
                   itemCount: categories.length ,
                   shrinkWrap: true,
                   itemBuilder:(context , index){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         width: MediaQuery.of(context).size.width / 2,
                         decoration: BoxDecoration(
                           border: Border.all(width: 2,color: HexColor(AppColors.blackColor)),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Center(
                           child: Text(categories[index],
                              style: TextStyle(
                                color: HexColor(AppColors.blackColor),
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                
                              ),
                            ),
                          ),
                       ),
                     );
                 
                   }
                  ),
               )
            ],
          ),
        ),
      ),
    );
  }
}