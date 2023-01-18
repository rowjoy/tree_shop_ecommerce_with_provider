// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
class SliderDesign extends StatelessWidget {
  const SliderDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: GradientColors.getGradient(Colors.primaries[Random().nextInt(Colors.primaries.length)]),
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
                          style: const TextStyle(
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
    );
  }
}