import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_colors.dart';
import 'package:food_delivery_app/components/dimensions.dart';
import 'package:food_delivery_app/controller/home_page_slider_controller.dart';
import 'package:food_delivery_app/views/home/popular_food_list.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/head_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {


  const FoodPageBody({ Key? key }) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {

  @override
  void initState(){

    super.initState();
    HomePageSliderController.pageController.addListener(() {

      setState(() {
        
        HomePageSliderController.currentPageValue = HomePageSliderController.pageController.page!;
      });
    });
  }

  @override
  void dispose(){

    HomePageSliderController.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(

      children: [

        // slider section
        SizedBox(

          height: Dimentions.pageView,
          child: PageView.builder(

            controller: HomePageSliderController.pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              
              return _buildPageItems(index);
            },
          ),
        ),

        // showing the dots indicator
        DotsIndicator(

          dotsCount: 5,
          position: HomePageSliderController.currentPageValue,
          decorator: DotsDecorator(
            
            activeColor: AppColors.mainColor,
            color: Colors.grey,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        SizedBox(height: Dimentions.heightWhiteSpace_30),

        // popular text
        Padding(

          padding: EdgeInsets.only(left: Dimentions.widthWhiteSpace_20, right: Dimentions.widthWhiteSpace_20),
          child: Row(

            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              HeadText(

                textName: "Popular", textColor: AppColors.mainBlackColor, textSize: Dimentions.fontSize_25,
              ),

              SizedBox(width: Dimentions.widthWhiteSpace_10),

              Container(

                margin: const EdgeInsets.only(bottom: 3.0),
                child: SmallText(

                  textName: "Food Pairing",
                  textColor: AppColors.textColor, textSize: Dimentions.fontSize_14,
                ),
              )
            ],
          ),
        ),

        SizedBox(height: Dimentions.heightWhiteSpace_20),

        const PopularFoodList()
      ],
    );
  }

  Widget _buildPageItems(int index){

    HomePageSliderController.pageViewTransform(context, index);

    return Transform(

      transform: HomePageSliderController.matrix,
      child: Stack(
    
        children: [
    
          Container(
      
            height: Dimentions.pageViewContainer,
            margin: EdgeInsets.only(
              
              left: Dimentions.widthWhiteSpace_10,
              right: Dimentions.widthWhiteSpace_10
            ),
            decoration: BoxDecoration(
      
              borderRadius: BorderRadius.circular(Dimentions.radius_30),
              image: const DecorationImage(
      
                image: AssetImage('assets/images/biryani.jpg'),
                fit: BoxFit.fill
              )
            ),
          ),
    
          Align(
    
            alignment: Alignment.bottomCenter,
            child: Container(
              
              height: Dimentions.pageViewTextContainer, 
              //width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(

                left: Dimentions.widthWhiteSpace_30, 
                right: Dimentions.widthWhiteSpace_30, 
                bottom: Dimentions.heightWhiteSpace_30
              ),
              decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(Dimentions.radius_25),
                boxShadow: const [

                  BoxShadow(

                    color: Color(0xFFe8e8e8), blurRadius: 5.0,
                    offset: Offset(0, 5)
                  ),
                ],
                color: Colors.white,
              ),
    
              child: Padding(
    
                padding: EdgeInsets.only(

                  top: Dimentions.heightWhiteSpace_15,
                  left: Dimentions.widthWhiteSpace_20,
                  right: Dimentions.widthWhiteSpace_20
                ),
                child: AppColumn(headerTextName: "Biryani Corner", headerTextSize: Dimentions.fontSize_20)
              ),
            ),
          ),
        ]
      ),
    );
  }
}