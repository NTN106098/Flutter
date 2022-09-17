import 'package:day10/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color boderColor;
  String? text;
  IconData? icon;
  bool isIcon;

  AppButtons(
      {Key? key,
      this.isIcon = false,
      this.text = "Hi",
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.boderColor,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: boderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: AppText(
                text: text!,
                color: color,
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
