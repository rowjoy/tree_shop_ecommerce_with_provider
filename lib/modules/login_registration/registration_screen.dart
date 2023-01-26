import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tree_shop/core/colors.dart';
import 'package:tree_shop/widget/custom_button.dart';

import '../../widget/custom_testfield.dart';
class RegistionScreen extends StatefulWidget {
  const RegistionScreen({super.key});

  @override
  State<RegistionScreen> createState() => _RegistionScreenState();
}

class _RegistionScreenState extends State<RegistionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.whiteColor),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell( onTap: (){
          Navigator.pop(context);
        } ,child: Icon(Icons.arrow_back_ios ,color: HexColor(AppColors.greenColor),)),
        elevation: 0,
        title: Text("Registration here",style: TextStyle(color: HexColor(AppColors.greenColor) ),),
        backgroundColor: HexColor(AppColors.whiteColor),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset("assets/images/tree_two.png"),
                ),
              ),
              CustomTextField(
                label: "Enter name",
                controller: TextEditingController(),
                keyboardType: TextInputType.text,
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 16,),
              CustomTextField(
                label: "Enter email",
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 16,),
              CustomTextField(
                label: "Enter password",
                controller: TextEditingController(),
                keyboardType: TextInputType.text,
                obscureText: true,
               prefixIcon: Icons.password,
               suffixIcon: Icons.visibility_off,
              ),
              const SizedBox(height: 16,),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                buttonName: "registration",
                padding: const EdgeInsets.all(0),
                onPressed: (){

                }
              ),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    ) ;
  }
}

