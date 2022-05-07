import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HeadText extends StatelessWidget {

  Color? textColor;
  final String textName;
  final double textSize;
  TextOverflow overflow;

  HeadText({ 

    Key? key, 
    this.textColor = const Color(0xFF332d2b), 
    required this.textName,
    required this.textSize,
    this.overflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      
      textName,
      maxLines: 1,
      overflow: overflow,
      style: GoogleFonts.roboto(

        color: textColor, fontSize: textSize, fontWeight: FontWeight.w400
      ),
    );
  }
}