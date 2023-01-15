// ignore_for_file: non_constant_identifier_names


import 'package:flutter/material.dart';

class AppColors {
  static String greenColor = "#06283D";
  static String seGreenColor = "#A6BB8D";
  static String midelGreenColor = "#A6BB8D";
  static String whiteColor = "#EEF4F4";
  static String blackColor = "#000000";
  static String grayColors = "#DFF6FF";
}

class GradientColors{

  static getGradient(Color color ,) {
    return LinearGradient(
      colors: [color.withOpacity(0.5), color.withOpacity(0.1)],
      stops: const [0.0, 0.7]);
  }

}
