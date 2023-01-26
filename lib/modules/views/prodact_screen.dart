

// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
import 'package:tree_shop/modules/views/prodact_details_screen.dart';

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
  int favorite = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(
        reverse: false,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
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
                  itemCount: 10,
                  itemBuilder: ( BuildContext context , i) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                          builder: ((context) => ProdactDetailsScreen(image: "assets/images/tree_two.png",tag: i,)),
                          ));
                      },
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor(AppColors.greenColor).withOpacity(0.3),
                            ),
                          ),
                         Hero(
                           tag: i,
                           child: Transform.translate(
                             offset: Offset(0, -40),
                             child: AspectRatio(
                               aspectRatio: 1.5,
                               child: Image.asset("assets/images/tree_two.png"),
                             ),
                            ),
                         ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 20,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 5,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext context, index){
                                          return Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(Icons.star_rate,size: 20, color: Colors.yellow,),
                                          );
                                      },
                                    ),
                                  ),
                                  Text("Rose tree", 
                                    style: TextStyle(
                                      color: HexColor(AppColors.greenColor),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$400 Price" , 
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 25,),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            favorite = i;
                                          });
                                        },
                                        child: favorite == i ? Icon(Icons.favorite ,color: Colors.red ,) : Icon(Icons.favorite_border_outlined,color: Colors.grey,),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
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



