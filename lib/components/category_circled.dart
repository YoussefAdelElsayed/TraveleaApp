import 'package:flutter/material.dart';
import 'package:travelea/components/small_text.dart';
import 'package:travelea/utils/size_config.dart';

import 'circle_image.dart';
class CategoryCircled extends StatefulWidget {
  String? text;
  bool? isSelected;
  void Function()? function;
  String? netWorkImageLink;
  CategoryCircled({required this.text,required this.isSelected, this.function,required this.netWorkImageLink});

  @override
  State<CategoryCircled> createState() => _CategoryCircledState();
}

class _CategoryCircledState extends State<CategoryCircled> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          (widget.isSelected)!?widget.isSelected=false:widget.isSelected=true;
        });
      },
      child: Column(
        children: [
          CircleImage(radius: (SizeConfig.defaultSize)! * 3.2, withBorder: true, networkImageLink: widget.netWorkImageLink),
          SmallText(widget.text, color:(widget.isSelected!)? Colors.black : Colors.grey, fountSize: 1.2, withPadding: false),
        ],
      ),
    );
  }
}
