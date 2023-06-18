import 'package:flutter/material.dart';
import 'package:travelea/components/small_text.dart';
import 'package:travelea/models/city_filters.dart';
class CategoryType extends StatefulWidget {
  CityFilters cityFilters;
  CategoryType({required this.cityFilters});

  @override
  State<CategoryType> createState() => _CategoryTypeState();
}

class _CategoryTypeState extends State<CategoryType> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          (widget.cityFilters.isSelected)!?widget.cityFilters.isSelected=false:widget.cityFilters.isSelected=true;

        });
      },
        child: SmallText(widget.cityFilters.text, color:(widget.cityFilters.isSelected!)? Colors.black : Colors.grey, fountSize: 1.2, withPadding: true)
    );
  }
}
