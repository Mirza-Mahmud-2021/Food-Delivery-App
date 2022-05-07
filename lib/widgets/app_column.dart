import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_colors.dart';
import 'package:food_delivery_app/components/dimensions.dart';
import 'package:food_delivery_app/widgets/head_text.dart';
import 'package:food_delivery_app/widgets/row_icon_text_widgets.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {

  final String headerTextName;
  final double headerTextSize;

  const AppColumn({ Key? key, required this.headerTextName, required this.headerTextSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
    
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        HeadText(
    
          textName: headerTextName,
          textSize: headerTextSize,
          textColor: AppColors.mainBlackColor,
        ),
    
        SizedBox(height: Dimentions.heightWhiteSpace_10),
    
        Row(
                      
                      
          children: [
    
            Wrap(
    
              children: List.generate(5, (index){
    
                return Icon(Icons.star_rate_rounded, color: AppColors.mainColor);
              }),
            ),
    
            SizedBox(width: Dimentions.widthWhiteSpace_10),
    
            SmallText(
    
              textName: "5.0",
              textColor: AppColors.textColor,
              textSize: Dimentions.fontSize_14,
            ),
    
            SizedBox(width: Dimentions.widthWhiteSpace_10),
    
            SmallText(
    
              textName: "1287",
              textColor: AppColors.textColor,
              textSize: Dimentions.fontSize_14,
            ),
    
            SmallText(
    
              textName: " comments",
              textColor: AppColors.textColor,
              textSize: Dimentions.fontSize_14,
            )
          ],
        ),
    
        SizedBox(height: Dimentions.heightWhiteSpace_20),
    
        Row(
    
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
    
            RowIconTextWidget(
    
              icon: Icons.circle_sharp,
              iconColor: Colors.amber,
              text: "Normal",
              textColor: AppColors.textColor,
            ),
    
            RowIconTextWidget(
    
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
              text: "1.7km",
              textColor: AppColors.textColor,
            ),
    
            RowIconTextWidget(
    
              icon: Icons.access_time_rounded,
              iconColor: Colors.red,
              text: "32min",
              textColor: AppColors.textColor,
            ),
          ],
        )
      ],
    );
  }
}