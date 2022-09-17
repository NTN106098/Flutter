import 'package:day10/utils/colors.dart';
import 'package:day10/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ReponsiveButton extends StatelessWidget {
  bool? isReponsive;
  double? width;

  ReponsiveButton({Key? key, this.width = 120, this.isReponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isReponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        child: Row(
          mainAxisAlignment: isReponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isReponsive == true
                ? Container(
                    margin: EdgeInsets.only(left: 20),
                    child: AppText(
                      text: "Book Trip Now",
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Image.asset("assets/img/button-one.png")
          ],
        ),
      ),
    );
  }
}
