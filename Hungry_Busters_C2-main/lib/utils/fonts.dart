import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hungry_busters/utils/colors.dart';

class Fonts {
  static TextStyle fontReguler = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: CustomColors.fontColor,
          fontSize: 12,
          fontWeight: FontWeight.w400));
  static TextStyle fontMedium = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: CustomColors.fontColor,
          fontSize: 14,
          fontWeight: FontWeight.w500));
  static TextStyle fontBold = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: CustomColors.fontColor,
          fontSize: 18,
          fontWeight: FontWeight.w700));
}
