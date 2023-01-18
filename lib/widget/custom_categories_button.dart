import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
class CategoriesButtonDesign extends StatelessWidget {

  final Color? color;
  final String? buttonLabel;
  final String? imagePath;
  const CategoriesButtonDesign({
    Key? key,
    this.color,
    required this.buttonLabel,
    required this.imagePath,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset("$imagePath" ,width: 40, height: 40,),
            ),
            Text("$buttonLabel".toUpperCase(),
              style: TextStyle(
                color: HexColor(AppColors.whiteColor),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}