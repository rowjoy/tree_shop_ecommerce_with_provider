

// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers



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
                        color: HexColor(AppColors.greenColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.bar_chart_rounded, color: HexColor(AppColors.whiteColor,),size: 35,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              
            ],
          ),
        ),
      ),
    );
  }
}