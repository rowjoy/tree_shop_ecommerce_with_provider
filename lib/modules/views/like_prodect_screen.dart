import 'package:flutter/material.dart';
class LikeProdectScreen extends StatefulWidget {
  const LikeProdectScreen({super.key});

  @override
  State<LikeProdectScreen> createState() => _LikeProdectScreenState();
}

class _LikeProdectScreenState extends State<LikeProdectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Prodect Like"),
        )
      ),
    );
  }
}