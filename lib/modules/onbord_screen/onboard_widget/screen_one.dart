// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
import 'package:tree_shop/core/strings.dart';
class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.whiteColor),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
               Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset("assets/images/tree_one.png"),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Forests of Bangladesh".toUpperCase(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(AppString.forestsOfBangladesh,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: HexColor(AppColors.blackColor),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}