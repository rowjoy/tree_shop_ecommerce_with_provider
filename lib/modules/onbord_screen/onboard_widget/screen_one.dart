import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.whiteColor),
      body: Container(
        child: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset("assets/images/tree_one.png"),
          ),
        ),
      ),
    );
  }
}