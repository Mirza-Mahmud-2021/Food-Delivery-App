import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_colors.dart';
import 'package:food_delivery_app/components/dimensions.dart';
import 'package:food_delivery_app/widgets/head_text.dart';
import 'package:food_delivery_app/widgets/row_icon_text_widgets.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class PopularFoodList extends StatefulWidget {

  const PopularFoodList({ Key? key }) : super(key: key);

  @override
  State<PopularFoodList> createState() => _PopularFoodListState();
}

class _PopularFoodListState extends State<PopularFoodList> {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        
         return Container(

           margin: EdgeInsets.only(

             left: Dimentions.widthWhiteSpace_20,
             right: Dimentions.widthWhiteSpace_20,
             bottom: Dimentions.heightWhiteSpace_10
           ),

           child: Row(

             children: [

              // image section
              Container(

                width: 125, height: 120,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(Dimentions.radius_15),
                  image: const DecorationImage(

                    image: AssetImage("assets/images/burger.jpg"),
                    fit: BoxFit.fill
                  )
                ),
              ),

              // text section
              Expanded(

                child: Container(
                 
                  height: 100, 
                  decoration: BoxDecoration(
                 
                    borderRadius: BorderRadius.only(
              
                      topRight: Radius.circular(Dimentions.radius_15),
                      bottomRight: Radius.circular(Dimentions.radius_15)
                    ),
                    color: Colors.grey[200]
                  ),

                  child: Padding(

                    padding: EdgeInsets.symmetric(

                      vertical: Dimentions.heightWhiteSpace_10,
                      horizontal: Dimentions.widthWhiteSpace_15
                    ),

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        HeadText(

                          textName: "Burger Items",
                          textColor: AppColors.mainBlackColor,
                          textSize: Dimentions.fontSize_20
                        ),

                        SizedBox(height: Dimentions.heightWhiteSpace_10),

                        SmallText(

                          textName: "with Italian characteristics",
                          textColor: AppColors.textColor,
                          textSize: Dimentions.fontSize_14,
                        ),

                        SizedBox(height: Dimentions.heightWhiteSpace_10),

                        Expanded(

                          child: Row(
                            
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}