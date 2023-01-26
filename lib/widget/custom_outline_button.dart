import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
class CustomOutlineButton extends StatelessWidget {
  final String buttonName;
  final  void Function()? onPressed;
  const CustomOutlineButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: HexColor(AppColors.whiteColor),
          elevation: 0,
          side: BorderSide(
            width: 2,
            color: HexColor(AppColors.greenColor),
          )
        ),
        onPressed:onPressed,
        child: Text("$buttonName".toUpperCase(),
          style: TextStyle(
            color: HexColor(AppColors.greenColor),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

