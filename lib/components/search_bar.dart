import 'package:flutter/material.dart';
import 'package:travelea/components/small_text.dart';
import 'package:travelea/utils/size_config.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (SizeConfig.defaultSize)! * 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.search_rounded,color: Color(0xffbb5c2d),),
              SmallText('Discover a city', color: Colors.grey, fountSize: 1.2, withPadding: true),
            ],
          ),
          Row(
            children: [
              Icon(Icons.menu,color: Colors.grey,),
              SizedBox(width: 10,),
            ],
          ),
        ],
      ),
    );
  }
}
