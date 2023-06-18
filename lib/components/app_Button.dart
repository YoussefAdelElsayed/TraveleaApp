import 'package:flutter/material.dart';
import 'package:travelea/components/small_text.dart';
import 'package:travelea/utils/size_config.dart';

import 'head_text.dart';
class AppButton extends StatelessWidget {
  String? text;
  bool isOutlined = false;

  AppButton({required this.text, this.isOutlined=false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: (isOutlined)?5:6,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
        child: Container(
          height: (SizeConfig.defaultSize)!*7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: (isOutlined)?null: Color(0xffbb5c2d),
            border: Border.all(
              color: Color(0xffbb5c2d),
              width: 2,
            )

          ),
          child: Center(child: HeadText(text, color: (isOutlined)?Color(0xffbb5c2d) : Colors.white, fountSize: 1.4, withPadding: true)),
        ),
      ),
    );
  }
}
