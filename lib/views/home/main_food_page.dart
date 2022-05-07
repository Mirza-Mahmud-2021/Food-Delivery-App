import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_colors.dart';
import 'package:food_delivery_app/components/dimensions.dart';
import 'package:food_delivery_app/views/home/food_page_body.dart';
import 'package:food_delivery_app/widgets/head_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {

  const MainFoodPage({ Key? key }) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Column(
            
          children: [
            
            // showing the header
            Container(
              
              margin: EdgeInsets.only(
        
                top: Dimentions.heightWhiteSpace_20, 
                bottom: Dimentions.heightWhiteSpace_20
              ),
              padding: EdgeInsets.only(
        
                left: Dimentions.widthWhiteSpace_20, 
                right: Dimentions.widthWhiteSpace_20
              ),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          
                  Column(
          
                    children: [
          
                      HeadText(
        
                        textName: "Bangladesh",
                        textColor: AppColors.mainColor,
                        textSize: Dimentions.fontSize_25,
                      ),
          
                      SizedBox(height: Dimentions.heightWhiteSpace_10),
          
                      Row(
        
                        children: [
                           
                          SmallText(
        
                            textName: "Jhenidah",
                            textColor: AppColors.textColor, 
                            textSize: Dimentions.fontSize_14,
                          ),
        
                          Icon(Icons.arrow_drop_down_rounded, color: AppColors.mainBlackColor)
                        ],
                      )
                    ],
                  ),
          
                  Container(
          
                    width: Dimentions.widthWhiteSpace_45, height: Dimentions.heightWhiteSpace_45,
                    decoration: BoxDecoration(
          
                      borderRadius: BorderRadius.circular(Dimentions.radius_15),
                      color: AppColors.mainColor
                    ),
                    child: Icon(Icons.search, color: Colors.white, size: Dimentions.iconSize_24),
                  )
                ],
              ),
            ),
        
            // showing the slider card
            const Expanded(

              child: SingleChildScrollView(
            
                child: FoodPageBody()
              ),
            ),  
          ],
        ),
      ),
    );
  }
}