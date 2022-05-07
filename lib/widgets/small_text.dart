import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {

  Color? textColor;
  final String textName;
  double textSize;

  SmallText({

    Key? key,
    this.textColor = const Color(0xFF332d2b),
    required this.textName,
    this.textSize = 12.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      
      textName,
      style: GoogleFonts.roboto(

        color: textColor, fontSize: textSize
      ),
    );
  }
}