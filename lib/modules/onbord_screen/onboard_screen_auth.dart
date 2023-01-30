// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
import 'package:tree_shop/modules/login_registration/login_screen.dart';
import 'package:tree_shop/modules/login_registration/registration_screen.dart';
import 'package:tree_shop/modules/screen_layout/base_screen_layout.dart';
import 'package:tree_shop/modules/views/prodact_screen.dart';
import 'package:tree_shop/widget/custom_button.dart';

import '../../widget/custom_outline_button.dart';
class OnboardScrrenTwo extends StatefulWidget {
  const OnboardScrrenTwo({super.key});

  @override
  State<OnboardScrrenTwo> createState() => _OnboardScrrenTwoState();
}

class _OnboardScrrenTwoState extends State<OnboardScrrenTwo> {
   bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.whiteColor),
      body: SafeArea(
        minimum: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset("assets/images/tree_two.png"),
            ),
            CustomOutlineButton(
              buttonName: "Guest user",
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BaseLayoutScreen() ));
              },
            ),
            SizedBox(height: 16,),
            CustomButton(
              buttonName: "Login",
              padding: const EdgeInsets.all(0.0),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()) );
              },
             ),
            const SizedBox(height: 16,),
            CustomOutlineButton(
              buttonName: "Registion",
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => RegistionScreen()) ));
              }
            ),
            SizedBox(height: 35,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 IconButton(
                  onPressed: (){

                  },
                  icon: SvgPicture.asset("assets/icon/icons8-facebook.svg"),
                 ),
                 SizedBox(width: 8,),
                 IconButton(
                  onPressed: (){

                  },
                  icon: SvgPicture.asset("assets/icon/icons8-google.svg"),
                 ),
               ],
             ),
             SizedBox(height: 25,),
             Text(
               "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual",
               textAlign: TextAlign.center,
               style: TextStyle(
                 color: HexColor(AppColors.greenColor),
                 fontSize: 12,
               ),
            ),
          ],
        )
      ),
    );
  }
}

