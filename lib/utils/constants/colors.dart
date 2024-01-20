import 'package:flutter/material.dart';

class TColors{
  TColors._();

  //app Basic Colors
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondy = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  //gradient colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
    Color(0xffff9a9fe),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ]);
  //text colors
  static const Color textprimary = Color(0xFF333333);
  static const Color textsecondy = Color(0xFF6c757d);
  static const Color textWhite = Colors.white;

  //background colors
  static const Color light = Color(0xFFf6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primarybackground = Color(0xFFf3f5ff);

  //background Container Colors
  static const Color lightContainer = Color(0xFFf6f6f6);
  static  Color darkContainer = Colors.white.withOpacity(0.1);

  // Button Colors
  static const Color ButtonPrimary = Color(0xFF4b68ff);
  static const Color ButtonSecondary = Color(0xFF6c757d);
  static const Color ButtonDisable = Color(0xFFc4c4c4);

  // border colors
  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);
}

