import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTextStyles {
  static final defaultFontFamily = GoogleFonts.poppins().fontFamily;
  static final TextStyle font24Black700Weight = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: ColorsManager.black,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font24BlueBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font32BlueBold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font16BlueSemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ColorsManager.mainBlue,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font17BlueBold = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font18BlueBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font11Grey400WeightRegular = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grey,
    fontFamily: defaultFontFamily,
  );
  static final font16White600Weight = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ColorsManager.white,
    fontFamily: defaultFontFamily,
  );

  static final TextStyle font14GreyNormal = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font14BBlackBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font14BlackNormal = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static final TextStyle font14WhiteBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: defaultFontFamily,
  );
  static final TextStyle font12WhiteBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle font17BlackNormal = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
  static final TextStyle font17WhiteNormal = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static final TextStyle font17WhiteBold = font17WhiteNormal.copyWith(fontWeight: FontWeight.bold);
  static final TextStyle font17BlackBold = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final font18BlackNormal = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
  static final font18BlackBold = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
  static final font18WhiteNormal = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static final font18WhiteSemiBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static final font15BlackNormal = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
  static final font15WhiteNormal = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static final font15WhiteBold = TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
  static final font15BlackBold = TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black);
  static final font16BlackNormal = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    fontFamily: defaultFontFamily,
  );
  static final font16BlackBold = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.bold,
  );

  static final font16greyBold = TextStyle(
    color: Colors.grey,
    fontSize: 16,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.bold,
  );
  static final font16WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.bold,
  );
  static final font20MainColorBold = TextStyle(
    color: ColorsManager.mainColor,
    fontWeight: FontWeight.bold,
    fontFamily: defaultFontFamily,
    fontSize: 20,
  );

  static final font20BlackBold = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: defaultFontFamily,
    fontSize: 20,
  );
  static final font20WhiteBold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: defaultFontFamily,
    fontSize: 20,
  );

  static var font14RedNormal = TextStyle(
    fontSize: 14,
    color: Colors.red.shade700,
    fontWeight: FontWeight.normal,
    fontFamily: defaultFontFamily,
  );
  static var font15RedNormal = TextStyle(
    fontSize: 15,
    color: Colors.red.shade700,
    fontWeight: FontWeight.normal,
    fontFamily: defaultFontFamily,
  );
}
