// ignore_for_file: prefer_final_fields, sized_box_for_whitespace, unnecessary_string_interpolations

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
       duration: const Duration(seconds: 1),
       curve: Curves.fastOutSlowIn,
    );
  }
  int currentIndex = 0;
  List<String> buttonName = [
    "Next", "Next", "Done",
  ];
  late  List<Widget> onBoardScreens = [
        Container(
          color: Colors.red,
          child: const Center(
            child: Text("Page one"),
          ),
        ),
        Container(
          color: Colors.green,
          child: const Center(
            child: Text("Page two"),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: const Center(
            child: Text("Page three"),
          ),
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30,
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
                              height: 15,
                              width: 15,
                              decoration:  BoxDecoration(
                                color: currentIndex == index ?  Colors.yellow :Colors.black,
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: ElevatedButton(
                        onPressed: (){
                          if(currentIndex == 0 || currentIndex == 1){
                             pageChange();
                          }else{
                            print("Hello");
                          }
                        },
                        child: Text("${buttonName[currentIndex]}"),
                      ),
                    ),
                  )
                ],
              )
            ),
          ],
        )
      ),
    );
  }
}