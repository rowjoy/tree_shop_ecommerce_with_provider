

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
class LikeProdectScreen extends StatefulWidget {
  const LikeProdectScreen({super.key});

  @override
  State<LikeProdectScreen> createState() => _LikeProdectScreenState();
}

class _LikeProdectScreenState extends State<LikeProdectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.whiteColor),
      // ignore: prefer_const_constructors
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 25),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context , index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor(AppColors.whiteColor),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: HexColor(AppColors.greenColor),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                          ),
                        ),
                        child: Image.asset("assets/images/tree_two.png"),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ross",
                             style: TextStyle(
                              color: HexColor(AppColors.greenColor),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           Text("Lemon tree stall".toUpperCase(),
                             style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text("\$410 price",
                             style: TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],

                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}