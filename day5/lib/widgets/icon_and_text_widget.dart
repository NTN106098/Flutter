import 'package:day5/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconClor;
  const IconAndTextWidget({Key? key,
    required this.icon,
    required this.text,
    
    required this.iconClor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconClor,),
        SizedBox(width: 5,),
        SmallText(text: text,)
      ],);
  }
}