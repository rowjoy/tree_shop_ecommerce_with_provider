// ignore_for_file: prefer_final_fields, sized_box_for_whitespace, unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
import 'package:tree_shop/modules/onbord_screen/onboard_screen_auth.dart';
import 'package:tree_shop/modules/onbord_screen/onboard_widget/screen_one.dart';
import 'package:tree_shop/modules/onbord_screen/onboard_widget/screen_three.dart';
import 'package:tree_shop/modules/onbord_screen/onboard_widget/screen_two.dart';

import '../../widget/custom_button.dart';
class OnBoardScreen extends StatefulWidget {
 // ignore: prefer_const_constructors_in_immutables
 OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}
class _OnBoardScreenState extends State<OnBoardScreen> {
  final _controller = PageController();
  pageChange (){
    _controller.nextPage(
       duration: const Duration(seconds: 1),
       curve: Curves.fastOutSlowIn,
    );
  }
  int currentIndex = 0;
  List<String> buttonName = [
    "Next", "Next", "Done",
  ];
  late  List<Widget> onBoardScreens = [
        const ScreenOne(),
        const ScreenTwo(),
        const ScreenThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.whiteColor),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                // physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                pageSnapping: false,
                reverse: false,
                scrollDirection: Axis.horizontal,
                children: onBoardScreens,
                onPageChanged: (index){
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal ,
                        itemCount: onBoardScreens.length,
                        shrinkWrap: true,
                        itemBuilder: (context , index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 11,
                              decoration:  BoxDecoration(
                                color: currentIndex == index ?  HexColor(AppColors.greenColor) : HexColor(AppColors.seGreenColor),
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                  ),
                  CustomButton(
                    buttonName: "${buttonName[currentIndex]}",
                     onPressed: (){
                      if(currentIndex == 0 || currentIndex == 1){
                          pageChange();
                        }else{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> OnboardScrrenTwo()));
                        }
                    },
                  ),
                ],
              )
            ),
          ],
        )
      ),
    );
  }
}

