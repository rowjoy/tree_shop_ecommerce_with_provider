// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../core/colors.dart';
class ProdactDetailsScreen extends StatefulWidget {
  final String? image;
  final dynamic tag;
  const ProdactDetailsScreen({super.key,this.image,required this.tag});

  @override
  State<ProdactDetailsScreen> createState() => _ProdactDetailsScreenState();
}

class _ProdactDetailsScreenState extends State<ProdactDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 8),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Material(
                                    elevation: 2,
                                    borderRadius: BorderRadius.circular(50),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.shopping_cart,color: HexColor(AppColors.greenColor),),
                                    )
                                  ),
                                  Transform.translate(
                                    offset: Offset(30, 0.5),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.red,
                                      child: Text("0"),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 32,),
                              Stack(
                                clipBehavior: Clip.antiAlias,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    CircleAvatar(
                                      child: Icon(Icons.person),
                                    ),
                                    Transform.translate(
                                      offset: Offset(32, 4.0),
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor: HexColor(AppColors.greenColor),
                                      ),
                                    ),
                                  ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
           Hero(
             tag: widget.tag,
             child: AspectRatio(
               aspectRatio: 1,
               child: Image.asset(widget.image.toString()),
             ),
           ),
          ],
        ),
      ),
    );
  }
}