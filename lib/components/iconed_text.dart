import 'package:flutter/material.dart';
import 'package:travelea/components/small_text.dart';

import 'head_text.dart';
class IconedText extends StatelessWidget {
  String? text;
  IconData? icon;
  bool isOrange;
  IconedText({required this.text,required this.icon,this.isOrange=false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: (isOrange)? Color(0xffbb5c2d) : Colors.grey,),
        (isOrange)? HeadText(text, color: Color(0xffbb5c2d), fountSize: 1.4, withPadding: true):SmallText(text, color: Colors.grey, fountSize: 1.2, withPadding: true),
      ],
    );
  }
}
