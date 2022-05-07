import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/dimensions.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class RowIconTextWidget extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color iconColor, textColor;

  const RowIconTextWidget({

    Key? key, 
    required this.icon, 
    required this.text, 
    required this.iconColor, 
    required this.textColor 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      
      children: [

        Icon(icon, color: iconColor, size: Dimentions.iconSize_24),

        const SizedBox(width: 5.0),

        SmallText(

          textName: text, textColor: textColor
        )
      ],
    );
  }
}