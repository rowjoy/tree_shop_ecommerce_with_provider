import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../core/colors.dart';
class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.whiteColor),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child:  Image.asset("assets/images/tree_two.png"),
          ),
        ),
      ),
    );
  }
}