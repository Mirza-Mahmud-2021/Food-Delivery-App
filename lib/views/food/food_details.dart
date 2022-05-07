import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_colors.dart';
import 'package:food_delivery_app/components/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/expandable_text.dart';
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

          // background image
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

          // showing icons
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

          // food details body
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
                  ),
                  SizedBox(height: Dimentions.heightWhiteSpace_20),

                  const Expanded(

                    child: SingleChildScrollView(
                      
                      child: ExpandableText(
                    
                        expandText: "Chicken Biryani is a savory chicken and rice dish that includes layers of chicken, rice, and aromatics that are steamed together. The bottom layer of rice absorbs all the chicken juices as it cooks, giving it a tender texture and rich flavor, while the top layer of rice turns out white and fluffy. Buried in the Biryani, you’ll find whole cuts of succulent chicken bursting with flavor from the potent array of spices, herbs, and aromatics it’s marinated in."
                        "Whether you’re talking Arroz con Pollo, Hainanese Chicken Rice, or Oyako Donburi, chicken and rice is a classic pairing that has permeated culinary culture around the world. It makes sense that earlier in human history, this staple grain would be combined with a domesticated source of protein. Still, the fact that this combination has endured as a popular favorite today, speaks to its unassailable deliciousness."
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(

        height: Dimentions.bottomNavContainerHeight_110,
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

              child: Align(

                alignment: Alignment.center,
                child: Row(
              
                  children: [
              
                    IconButton(
              
                      iconSize: Dimentions.iconSize_20,
                      icon: Icon(Icons.remove, color: AppColors.mainBlackColor),
                      onPressed: (){},
                    ),
                    SizedBox(width: Dimentions.widthWhiteSpace_10 / 2),

                    HeadText(
              
                      textName: "0",
                      textSize: Dimentions.fontSize_20,
                    ),
                    SizedBox(width: Dimentions.widthWhiteSpace_10 / 2),

                    IconButton(
              
                      color: Colors.grey[300],
                      iconSize: Dimentions.iconSize_20,
                      icon: Icon(Icons.add, color: AppColors.mainBlackColor),
                      onPressed: (){},
                    )
                  ],
                ),
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

                "\$5.0 | Add to cart",
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