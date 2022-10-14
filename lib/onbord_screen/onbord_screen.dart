// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
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
       duration: Duration(seconds: 1),
       curve: Curves.fastOutSlowIn,
    );
  }
  int currentIndex = 0;
late  List<Widget> onBoardScreens = [
      Container(
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: (){
                pageChange();
              }, 
              // ignore: prefer_const_constructors
              child: Text("Next"),
            )
          ],
        ),
      ),
      Container(
        color: Colors.green,
         child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                 pageChange();
              }, 
              // ignore: prefer_const_constructors
              child: Text("Next"),
            )
          ],
        ),
      ),
      Container(
        color: Colors.yellow,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: (){
                 pageChange();
              }, 
              // ignore: prefer_const_constructors
              child: Text("Done"),
            )
          ],
        ),
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
        )
      ),
    );
  }
}