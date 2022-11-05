// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
import 'package:tree_shop/widget/custom_button.dart';
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
              child: Image.asset("assets/images/onboard_tree.png"),
            ),
            SizedBox(
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
                onPressed: (){}, 
                child: Text("Gust user".toUpperCase(),
                  style: TextStyle(
                    color: HexColor(AppColors.greenColor),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            CustomButton(
              buttonName: "Registion",
              padding: const EdgeInsets.all(0.0),
              onPressed: (){

                },
             ),
            SizedBox(height: 35,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5 ,
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
                      onPressed: (){}, 
                      child: Text("Google".toUpperCase(),
                        style: TextStyle(
                          color: HexColor(AppColors.greenColor),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  
                  CustomButton(
                    width: MediaQuery.of(context).size.width / 2.5,
                    padding: const EdgeInsets.all(0.0),
                    buttonName: "FaceBook",
                    onPressed: (){}
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