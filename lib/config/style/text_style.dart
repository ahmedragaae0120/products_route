import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextsStyle {
  static TextStyle titlesStyle = GoogleFonts.poppins(
    color: const Color(0xff06004F),
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static TextStyle descriptionStyle = GoogleFonts.poppins(
    color: const Color(0xff06004F).withOpacity(0.6),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
