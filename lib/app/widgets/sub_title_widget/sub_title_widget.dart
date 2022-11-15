import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitleWidget extends StatelessWidget {
  final String title;

  final TextStyle? style;

  final TextAlign? textAlign;

  SubTitleWidget({Key? key, required this.title, this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.center,
      style: style ??
          GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width * 0.03,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.1),
    );
  }
}
