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

  static final TextStyle font18BlueBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
    fontFamily: defaultFontFamily,
  );

  static final TextStyle font14BlackNormal = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static final font15WhiteBold = TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
  static final font16BlackNormal = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    fontFamily: defaultFontFamily,
  );

  static final font16greyBold = TextStyle(
    color: Colors.grey,
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
}
