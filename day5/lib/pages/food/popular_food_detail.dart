import 'package:day5/utils/dimensions.dart';
import 'package:day5/widgets/app_column.dart';
import 'package:day5/widgets/app_icon.dart';
import 'package:day5/widgets/exandable_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/food4.jpg"
                  ) )
              ),
          )),
          //icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined)
              ],
            )
          ),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize-20,
            child: Container( 

              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   AppColumn(text: "NTN Side"),
                   SizedBox(height: Dimensions.height20,),
                   BigText(text: "Introduce"),
                   SizedBox(height: Dimensions.height20,),
                   
                   Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Phương thức bộ điều khiển: .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại . ")))
                ],
              ),
          ))
          
        ],
      ),
        bottomNavigationBar: Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20*2),
              topRight: Radius.circular(Dimensions.radius20*2)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20,right: Dimensions.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Icon(Icons.remove, color: AppColors.signColor,),
                    SizedBox(width: Dimensions.width10/2,),
                    BigText(text: "0"),
                    SizedBox(width: Dimensions.width10/2,),
                    Icon(Icons.add, color: AppColors.signColor,)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20,right: Dimensions.width20),
                child: BigText(text: "\$10 | Add to cart ", color: Colors.white,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor
                ),
              )
            ],
          ),
        ),
    );
  }
}