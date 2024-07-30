import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle title = GoogleFonts.rye(
      color: const Color(0xFF3A312F),
      fontSize: 25,
      fontWeight: FontWeight.w400);

  static TextStyle menuTitle = GoogleFonts.roboto(
      fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black);

  static TextStyle menuPrice = GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: const Color(0xFFEE8231));

  static TextStyle emptyFavorite = GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      // i need color for empty favorite
      color: Colors.blueGrey);

  static Icon homeIcon = const Icon(Icons.home);
  static Icon favoriteIcon = const Icon(Icons.favorite);

  static const scaffoldColor = Color(0xffFAF9F6);
}
