import 'package:flutter/material.dart';
import 'package:travelea/components/small_text.dart';
import 'package:travelea/models/categories.dart';
import 'package:travelea/utils/size_config.dart';
class Category extends StatefulWidget {
  Categories? categories;

  Category({required this.categories});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: (SizeConfig.defaultSize)!*1.2),
      child: InkWell(
        onTap: (){
          setState(() {
            (widget.categories?.isSelected)!?widget.categories?.isSelected=false:widget.categories?.isSelected=true;

          });
        },
        child: Container(
          height: (SizeConfig.defaultSize)! * 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: (widget.categories?.isSelected)!?  Color(0xffbb5c2d):Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all((SizeConfig.defaultSize)! * 1),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: NetworkImage((widget.categories?.networkImageLink)!),
                    fit: BoxFit.fill,
                    height: (SizeConfig.defaultSize)! * 5,
                    width: (SizeConfig.defaultSize)! * 5,
                  ),
                ),
              ),
              SmallText(widget.categories?.text, color:(widget.categories?.isSelected)!?Colors.white: Colors.grey, fountSize: 1.2, withPadding: false),
            ],
          ),
        ),
      ),
    );
  }
}
