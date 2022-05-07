import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/dimensions.dart';

class HomePageSliderController{

  static PageController pageController = PageController(viewportFraction: 0.89);

  static var currentPageValue = 0.0;
  static double scaleFactor = 0.8;
  static double height = Dimentions.pageViewContainer;
  static Matrix4 matrix = Matrix4.identity();

  static pageViewTransform(BuildContext context, int index){

    if(index == currentPageValue.floor()){

      var currentScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currentTransform = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTransform, 0);
    }
    else if(index == currentPageValue.floor() + 1){

      var currentScale = scaleFactor + (currentPageValue - index + 1) * (1 - scaleFactor);
      var currentTransform = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTransform, 0);
    }

    else if(index == currentPageValue.floor() - 1){

      var currentScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currentTransform = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTransform, 0);
    }
    else{

      var currentScale = 0.8;
      var currentTransition = height * (1 - scaleFactor) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTransition, 1);
    }
  }
}