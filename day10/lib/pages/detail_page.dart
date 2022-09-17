import 'package:day10/utils/colors.dart';
import 'package:day10/widgets/app_bottoms.dart';
import 'package:day10/widgets/app_large_text.dart';
import 'package:day10/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../widgets/reponsive_button.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/welcome-three.jpg"),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                top: 60,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (() {}),
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 270,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                  // color: Colors.red
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Da Lat",
                            color: Colors.black54,
                          ),
                          AppLargeText(
                            text: "\$ 250",
                            color: AppColors.bigTextColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.bigTextColor,
                          ),
                          AppText(
                            text: "Da Lat, Viet NaM",
                            color: AppColors.textColor2,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStars
                                    ? AppColors.starColor
                                    : AppColors.textColor2,
                              );
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppLargeText(
                            text: "(4.0)",
                            color: AppColors.textColor2,
                            size: 15,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppLargeText(
                        text: "People",
                        color: AppColors.bigTextColor.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "So nguoi trong nhom cua ban",
                        color: AppColors.bigTextColor.withOpacity(0.5),
                        size: 15,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: AppButtons(
                                color: selectIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectIndex == index
                                    ? Colors.black
                                    : AppColors.ButtonBackground,
                                boderColor: selectIndex == index
                                    ? Colors.black
                                    : AppColors.bigTextColor,
                                size: 40,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppLargeText(
                        text: "Description",
                        color: AppColors.bigTextColor.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text:
                            "Da Lat noi hoi tu nhieu canh dep tu nhien. Co cac dia danh noi tieng, tuyet dep de ban kham pha va luu niem.",
                        color: AppColors.bigTextColor.withOpacity(0.6),
                        size: 14,
                      )
                    ],
                  ),
                )),
            Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Row(
                  children: [
                    AppButtons(
                      color: Colors.red,
                      backgroundColor: Colors.white,
                      boderColor: AppColors.textColor2,
                      size: 50,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ReponsiveButton(
                      isReponsive: true,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
