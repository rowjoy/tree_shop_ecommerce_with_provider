import 'package:flutter/material.dart';


class ProdactScreen extends StatefulWidget {
  const ProdactScreen({super.key});

  @override
  State<ProdactScreen> createState() => _ProdactScreenState();
}

class _ProdactScreenState extends State<ProdactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text("Prodact Screen"),
          ),
        )
      ),
    );
  }
}