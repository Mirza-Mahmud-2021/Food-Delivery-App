import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_colors.dart';
import 'package:food_delivery_app/components/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/head_text.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetails extends StatefulWidget {

  const FoodDetails({ Key? key }) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(

        children: [

          Positioned(

            left: 0, right: 0,
            child: Container(

              width: double.maxFinite,
              height: Dimentions.foodImageContainerHeight_350,
              decoration: const BoxDecoration(

                image: DecorationImage(

                  image: AssetImage("assets/images/biryani.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),

          Positioned(
            
            top: Dimentions.heightWhiteSpace_45,
            left: Dimentions.widthWhiteSpace_20,
            right: Dimentions.widthWhiteSpace_20,
            child: Row(
          
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
          
                AppIcon(icon: Icons.arrow_back_ios_outlined),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),

          Positioned(

            top: Dimentions.foodImageContainerHeight_350 - 25,
            left: 0, right: 0,
            bottom: 0,
            child: Container(

              padding: EdgeInsets.symmetric(

                vertical: Dimentions.heightWhiteSpace_20,
                horizontal: Dimentions.widthWhiteSpace_20
              ),
              decoration: BoxDecoration(

                color: Colors.white, 
                borderRadius: BorderRadius.only(

                  topLeft: Radius.circular(Dimentions.radius_20),
                  topRight: Radius.circular(Dimentions.radius_20)
                )
              ),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  AppColumn(headerTextName: "Biryani Corner", headerTextSize: Dimentions.fontSize_25),
                  SizedBox(height: Dimentions.heightWhiteSpace_20),

                  HeadText(

                    textName: "Introduce",
                    textSize: Dimentions.fontSize_20,
                    textColor: AppColors.mainBlackColor
                  )
                ],
              )
            ),
          )
        ],
      ),

      bottomNavigationBar: Container(

        height: Dimentions.bottomNavContainerHeight_120,
        padding: EdgeInsets.symmetric(

          vertical: Dimentions.heightWhiteSpace_30,
          horizontal: Dimentions.widthWhiteSpace_20
        ),
        decoration: BoxDecoration(

          color: Colors.grey[200],
          borderRadius: BorderRadius.only(

            topLeft: Radius.circular(Dimentions.radius_20 * 2),
            topRight: Radius.circular(Dimentions.radius_20 * 2)
          )
        ),

        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(

              decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimentions.radius_15)
              ),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  IconButton(

                    iconSize: Dimentions.iconSize_16,
                    icon: Icon(Icons.remove, color: AppColors.mainBlackColor),
                    onPressed: (){},
                  ),

                  HeadText(

                    textName: "0",
                    textSize: Dimentions.fontSize_20,
                  ),

                  IconButton(

                    color: Colors.grey[300],
                    iconSize: Dimentions.iconSize_16,
                    icon: Icon(Icons.add, color: AppColors.mainBlackColor),
                    onPressed: (){},
                  )
                ],
              ),
            ),

            Container(

              padding: EdgeInsets.symmetric(

                vertical: Dimentions.heightWhiteSpace_15,
                horizontal: Dimentions.widthWhiteSpace_15
              ),
              decoration: BoxDecoration(

                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimentions.radius_15),
              ),
              child: Text(

                "\$0.5 Add to cart",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(

                  color: Colors.white,
                  fontSize: Dimentions.fontSize_18,
                  fontWeight: FontWeight.w400
                ),
              ),
            ) 
          ],
        )
      ),
    );
  }
}