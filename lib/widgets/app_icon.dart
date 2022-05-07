import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_colors.dart';
import 'package:food_delivery_app/components/dimensions.dart';

class AppIcon extends StatelessWidget {

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  const AppIcon({ 

    Key? key,
    required this.icon,
    this.backgroundColor = Colors.white60,
    this.iconColor = const Color(0xFF000000),
    this.size = 45
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      
      width: size, height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundColor,
      ),

      child: Icon(icon, color: iconColor, size: Dimentions.iconSize_20),
    );
  }
}