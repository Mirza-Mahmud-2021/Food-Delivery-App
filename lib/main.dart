import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/food/food_details.dart';
//import 'package:food_delivery_app/views/home/main_food_page.dart';
import 'package:get/get.dart';

void main(){

  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {

  const FoodDeliveryApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: FoodDetails(),
    );
  }
}