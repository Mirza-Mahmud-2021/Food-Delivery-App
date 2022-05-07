import 'package:get/get.dart';

class Dimentions{

  // dynamic screen height and width
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // dynamic pageview
  static double pageView = screenHeight / 2.35;
  static double pageViewContainer = screenHeight / 3.28;
  static double pageViewTextContainer = screenHeight / 6.56; 

  // dynamic white space for height, padding and margin
  static double heightWhiteSpace_10 = screenHeight / 82.00;
  static double heightWhiteSpace_15 = screenHeight / 54.67;
  static double heightWhiteSpace_20 = screenHeight / 41.00;
  static double heightWhiteSpace_30 = screenHeight / 27.33;
  static double heightWhiteSpace_45 = screenHeight / 18.22;

  // dynamic white space for width, padding and margin
  static double widthWhiteSpace_10 = screenWidth / 41.10;
  static double widthWhiteSpace_15 = screenWidth / 27.40;
  static double widthWhiteSpace_20 = screenWidth / 20.55;
  static double widthWhiteSpace_30 = screenWidth / 13.70;
  static double widthWhiteSpace_45 = screenWidth / 9.13;

  // dynamic fontsize
  static double fontSize_25 = screenHeight / 32.80;
  static double fontSize_20 = screenHeight / 41.00;
  static double fontSize_18 = screenHeight / 45.56;
  static double fontSize_16 = screenHeight / 51.25;
  static double fontSize_14 = screenHeight / 58.57;

  // dynamic border radius
  static double radius_15 = screenHeight / 54.67;
  static double radius_20 = screenHeight / 41.00;
  static double radius_25 = screenHeight / 32.80;
  static double radius_30 = screenHeight / 27.33;

  // dynamic icon size
  static double iconSize_24 = screenHeight / 34.17;
  static double iconSize_20 = screenHeight / 41.00;
  static double iconSize_16 = screenHeight / 51.25;

  // dynamic list view size
  static double listViewImageSize = screenWidth / 3.28;
  static double listViewTextContainerSize = screenWidth / 4.11;

  // dynamic food details page
  static double foodImageContainerHeight_350 = screenHeight / 2.34;

  // dynamic bottom nav 
  static double bottomNavContainerHeight_100 = screenHeight / 8.20;
  static double bottomNavContainerHeight_110 = screenHeight / 7.45;
  static double bottomNavContainerHeight_120 = screenHeight / 6.83;
}