import 'dart:ffi';

import 'package:day5/utils/colors.dart';
import 'package:day5/utils/dimensions.dart';
import 'package:day5/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondhalf;

  bool hiddenText = true;

  double textheight = Dimensions.screenHeight/5.63;
  // i love flutter laravel and golang 30 
 @override
  void initState() {
    super.initState();
    if(widget.text.length>textheight){
      firstHalf = widget.text.substring(0,textheight.toInt());
      secondhalf = widget.text.substring(textheight.toInt()+1, widget.text.length);
    }else{
      firstHalf=widget.text;
      secondhalf="";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty?SmallText(color: AppColors.paraColor,size: Dimensions.font16 , text:firstHalf):Column(
        children: [
          SmallText(height: 1.8, color: AppColors.paraColor, size: Dimensions.font16, text: hiddenText?(firstHalf+ "..."):(firstHalf+secondhalf)),
          InkWell(
            onTap: () {
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show more", color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.mainColor)
              ],
            ),
          )
        ],
      ),
    );
  }
}