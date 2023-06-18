import 'package:flutter/material.dart';
import 'package:travelea/utils/size_config.dart';
class SmallText extends StatelessWidget {

  String? text;
  Color? color;
  double? fountSize;
  bool withPadding=true;
  SmallText(this.text, {required this.color,required this.fountSize,required this.withPadding});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: (withPadding)? 10:2),
      child: Text(text!,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: (SizeConfig.defaultSize)!*fountSize!,
          color: color,
        ),
      ),
    );
  }
}
