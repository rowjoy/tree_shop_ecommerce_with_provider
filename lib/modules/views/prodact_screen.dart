

// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_string_interpolations



import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';


class ProdactScreen extends StatefulWidget {
  const ProdactScreen({super.key});

  @override
  State<ProdactScreen> createState() => _ProdactScreenState();
}

class _ProdactScreenState extends State<ProdactScreen> {
  List<String> categories = ["Rose", "Water Lily", "Beli flower" , "Sunflower" , "Marigold"];
  int sliderindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SafeArea(
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
                        padding: index != 0 ?  EdgeInsets.only( left: 8) : EdgeInsets.only(left: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: GradientColors.getGradient(Colors.primaries[Random().nextInt(Colors.primaries.length)])
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Upcomming Tree...",
                                        style: TextStyle(
                                          color: HexColor(AppColors.greenColor),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text("Rose",
                                        style: TextStyle(
                                          color: HexColor(AppColors.greenColor),
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          text: "Up to ".toUpperCase(),
                                          style: TextStyle(
                                            color: HexColor(AppColors.greenColor),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "70%".toUpperCase(),
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                              )
                                            ),
                                            TextSpan(
                                              text: " Off".toUpperCase(),
                                              style: TextStyle(
                                                color: HexColor(AppColors.blackColor),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]
                                        ),
                                      ),
                                    ],
                                  ),
                                ) ,
                              ),
                              Expanded(
                                child: Image.asset("assets/images/tree_two.png"),
                              ),
                            ],
                          ),
                        ),
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
                height: 55,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index){
                    return Padding(
                      padding: index != 0 ? EdgeInsets.only(left: 8) : EdgeInsets.only(left: 0),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: HexColor(AppColors.greenColor).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset("assets/images/tree_two.png" ,width: 40, height: 40,),
                                ),
                                Text("${categories[index]}".toUpperCase(),
                                  style: TextStyle(
                                    color: HexColor(AppColors.whiteColor),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
            ],
          ),
        ),
      ),
    );
  }
}