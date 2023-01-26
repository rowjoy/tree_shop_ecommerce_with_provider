import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final  IconData? prefixIcon;
  final  IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.label,
    required this.prefixIcon,
    required this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText!,
      keyboardType: keyboardType,
      style: TextStyle(
        color: HexColor(AppColors.greenColor),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        label: Text("$label", style: TextStyle(color: HexColor(AppColors.greenColor),fontSize: 20),),
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        prefixIcon: Icon(prefixIcon,color: HexColor(AppColors.greenColor),) ,
        suffixIcon : Icon(suffixIcon,color: HexColor(AppColors.seGreenColor),) ,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: HexColor(AppColors.greenColor),
            width: 1.5,
          ),
        ),
       enabledBorder : OutlineInputBorder(
          borderSide: BorderSide(
            color: HexColor(AppColors.greenColor),
            width: 1.5,
          ), 
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: HexColor(AppColors.greenColor),
            width: 1.5,
          ), 
        ),
        

      ),
    );
  }
}