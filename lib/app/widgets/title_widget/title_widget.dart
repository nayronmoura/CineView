import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  final TextStyle? style;
  final TextAlign? textAlign;

  TitleWidget({Key? key, required this.title, this.style,this.textAlign}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.center,
      style: style ??
          GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.1),
    );
  }
}
