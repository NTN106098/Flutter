import 'package:day5/utils/colors.dart';
import 'package:day5/utils/dimensions.dart';
import 'package:day5/widgets/app_icon.dart';
import 'package:day5/widgets/big_text.dart';
import 'package:day5/widgets/exandable_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon:Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                
                
                child: Center(child: BigText(size: Dimensions.font26, text: "Mì Ý NTN",)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)

                  )
                ),
              )
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food4.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                 
                  child: ExpandableTextWidget(text:"Phương thức bộ điều khiển: .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại .MyScaffold widget sắp xếp cách thành phần con thành dọc. Tại top của column khởi tạo MyAppBar, chuyền cho app bar Text widget để sử dụng title. Chuyền widget như là argument tới widgets khác nhờ đó mà bạn có thể sử dụng lại cho nhiều trường hợp khác nhau. Cuối cùng là MyScaffold sử dụng Expanded để làm đầy khoảng trống còn lại ." ),
                   margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],
            ),
            ),
          
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,


            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconSize: Dimensions.iconSize24, iconColor:Colors.white, backgroundColor: AppColors.mainColor, icon: Icons.remove),
                BigText(text: "\$12.88" + "X" + "0", color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(iconSize: Dimensions.iconSize24,iconColor:Colors.white,backgroundColor: AppColors.mainColor,icon: Icons.add),

              ],
            ),
          ),
           Container(
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
                child: Icon(
                  Icons.favorite,
                  color: AppColors.mainColor,
                )
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
        ],
      ) ,
    );
  }
}