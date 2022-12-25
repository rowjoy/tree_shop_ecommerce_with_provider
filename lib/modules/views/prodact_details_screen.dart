import 'package:flutter/material.dart';
class ProdactDetailsScreen extends StatefulWidget {
  const ProdactDetailsScreen({super.key});

  @override
  State<ProdactDetailsScreen> createState() => _ProdactDetailsScreenState();
}

class _ProdactDetailsScreenState extends State<ProdactDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("Prodact details")
        ),
      ),
    );
  }
}