import 'package:day5/utils/colors.dart';
import 'package:day5/widgets/big_text.dart';
import 'package:day5/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'food_page_body.dart';

class MainFoodpage extends StatefulWidget {
  const MainFoodpage({Key? key}) : super(key: key);

  @override
  State<MainFoodpage> createState() => _MainFoodpageState();
}

class _MainFoodpageState extends State<MainFoodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //showing the header
        children: [
            Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 45),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Shop-NTN",color: AppColors.mainColor, ),
                      Row(
                        children: [
                          SmallText(text: "Natusa",color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.mainColor
                      ),
                  ),
                  )
                ],
              ),
            ),
            
        ),
            //showing the body
            FoodPageBody(),
      ],)
    );
  }
}