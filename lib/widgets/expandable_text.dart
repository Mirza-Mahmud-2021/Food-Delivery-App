import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_colors.dart';
import 'package:food_delivery_app/components/dimensions.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {

  final String expandText;

  const ExpandableText({ Key? key, required this.expandText }) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {

  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeightLen = Dimentions.screenHeight / 5.5;

  @override
  void initState(){

    super.initState();

    // for long text
    if(widget.expandText.length > textHeightLen){

      firstHalf = widget.expandText.substring(0, textHeightLen.toInt());
      secondHalf = widget.expandText.substring(textHeightLen.toInt() + 1, widget.expandText.length);
    }
    //for short text
    else{

      firstHalf = widget.expandText;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container (
      
      child: secondHalf.isEmpty ? SmallText(

        textName: firstHalf,
        textColor: AppColors.paraColor,
        textSize: Dimentions.fontSize_16,
      ) : Column(

        children: [

          SmallText(textColor: AppColors.paraColor, textName: hiddenText ? (firstHalf + " ...") : (firstHalf + secondHalf), textSize: Dimentions.fontSize_16),
          SizedBox(height: Dimentions.heightWhiteSpace_10 - 2),

          InkWell(

            onTap: (){

              setState(() {
                
                hiddenText = !hiddenText;
              });
            },
            child: Row(

              children: [

                SmallText(textName: "Show more", textColor: AppColors.mainColor, textSize: Dimentions.fontSize_14),
                SizedBox(width: Dimentions.widthWhiteSpace_10 / 2),

                Icon(

                  hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up, 
                  color: AppColors.mainColor, 
                  size: Dimentions.iconSize_20
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}