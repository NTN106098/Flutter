import 'package:day10/cubit/app_cubits.dart';
import 'package:day10/utils/colors.dart';
import 'package:day10/widgets/app_large_text.dart';
import 'package:day10/widgets/app_text.dart';
import 'package:day10/widgets/reponsive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WellcomePage extends StatefulWidget {
  WellcomePage({Key? key}) : super(key: key);

  @override
  State<WellcomePage> createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  List images = [
    "welcome-one.jpg",
    "welcome-two.jpg",
    "welcome-three.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/" + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, //vị trí bắt đầu các kí tự
                        children: [
                          AppLargeText(text: "Trips"),
                          AppText(
                            text: "River",
                            size: 30,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppText(
                              text: "River  give you.... of freedom",
                              color: AppColors.textColor2,
                              size: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: (() {
                              BlocProvider.of<AppCubits>(context).getData();
                            }),
                            child: Container(
                              width: 200,
                              child: Row(children: [
                                ReponsiveButton(
                                  width: 120,
                                ),
                              ]),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            //indexDots sử dụng để chia scroll
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexDots
                                    ? AppColors.mainColor
                                    : AppColors.mainColor.withOpacity(0.3)),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
