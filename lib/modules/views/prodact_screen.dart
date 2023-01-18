

// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_string_interpolations



import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';

import '../../widget/custom_categories_button.dart';
import '../../widget/custom_slider_design.dart';


class ProdactScreen extends StatefulWidget {
  const ProdactScreen({super.key});

  @override
  State<ProdactScreen> createState() => _ProdactScreenState();
}

class _ProdactScreenState extends State<ProdactScreen> {
  List<String> categories = ["Rose", "Water Lily", "Beli flower" , "Sunflower" , "Marigold"];
  int sliderindex = 0;
  int selectCatagori = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(
        reverse: true,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(50),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.auto_awesome_mosaic_sharp, color: HexColor(AppColors.greenColor),),
                        )
                      ),
                      Container(
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Material(
                                  elevation: 2,
                                  borderRadius: BorderRadius.circular(50),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.shopping_cart),
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
                               // ignore: prefer_const_literals_to_create_immutables
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
                SizedBox(height: 15,),
                Container(
                  child: Row(
                    children: [
                     Expanded(
                       child: CupertinoSearchTextField(
                          padding: EdgeInsets.all(16),
                       ),
                      ),
                      SizedBox(width: 16,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          gradient: GradientColors.getGradient(HexColor(AppColors.greenColor)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.bar_chart_rounded, color: HexColor(AppColors.whiteColor,),size: 35,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    itemBuilder: (
                      BuildContext context , index){
                        return Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: SliderDesign(),
                        );
                    },
                    itemCount:10,
                    reverse: false,
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                    onPageChanged: (value){
                      setState(() {
                        sliderindex = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 20,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                     itemBuilder: (BuildContext context, index){
                         return Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: CircleAvatar(
                             radius: 5,
                             backgroundColor: sliderindex == index ? HexColor(AppColors.greenColor) : Colors.grey,
                            ),
                         );
                     },
                   ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index){
                      return Padding(
                        padding: index != 0 ? EdgeInsets.only(left: 8) : EdgeInsets.only(left: 0),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              selectCatagori = index;
                            });
                          },
                          child: CategoriesButtonDesign(
                            imagePath: "assets/images/tree_two.png",
                            color: selectCatagori == index ? HexColor(AppColors.midelGreenColor) : HexColor(AppColors.greenColor).withOpacity(0.5),
                            buttonLabel: "${categories[index]}",
                          ),
                        ),
                      );
                    }
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular", style: TextStyle(
                        color: HexColor(AppColors.greenColor),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: (){
      
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("View all",
                          style: TextStyle(
                            color: HexColor(AppColors.greenColor),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50,),
                GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 6,
                   // childAspectRatio: 100 / 130,
                  ),
                  itemCount: 20,
                  itemBuilder: ( BuildContext context , i) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor(AppColors.greenColor).withOpacity(0.3),
                          ),
                        ),
                       Transform.translate(
                         offset: Offset(0, -40),
                         child: AspectRatio(
                           aspectRatio: 1.5,
                           child: Image.asset("assets/images/tree_two.png"),
                         ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            child: Column(
                              children: [
                                Text("Hello"),
                                Text("Hello")
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                    // return Material(
                    //   elevation: 5,
                    //   borderRadius: BorderRadius.circular(10),
                    //   child: Container(
                    //     margin: EdgeInsets.all(2),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: HexColor(AppColors.greenColor).withOpacity(0.3),
                    //     ),
                    //     child: Column(
                    //       children: [

                    //       ],
                    //     )
                    //   ),
                    // );
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



