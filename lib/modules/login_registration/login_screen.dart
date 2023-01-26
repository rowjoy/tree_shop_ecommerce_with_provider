import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../core/colors.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_testfield.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        title: Text("Login here",style: TextStyle(color: HexColor(AppColors.greenColor) ),),
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
                  buttonName: "Login",
                  padding: const EdgeInsets.all(0),
                  onPressed: (){

                  }
                ),
            ],
          ),
        ),
      ),
    );
  }
}