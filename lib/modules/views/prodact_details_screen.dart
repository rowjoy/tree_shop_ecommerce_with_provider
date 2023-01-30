// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/widget/custom_appbar.dart';

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
      appBar: CustomAppBar(),
      backgroundColor: HexColor(AppColors.whiteColor),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.tag,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(widget.image.toString()),
              ),
            ),
            SizedBox(height: 16),
            Text("Ross ")
          ],
        ),
      ),
    );
  }
}