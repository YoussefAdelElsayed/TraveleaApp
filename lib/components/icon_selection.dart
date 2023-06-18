import 'package:flutter/material.dart';
import 'package:travelea/utils/size_config.dart';
class IconSelection extends StatelessWidget {
  IconData? iconBefore;
  IconData? iconAfter;
  bool isSelected = false;

  IconSelection({required this.iconBefore,required this.iconAfter,this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (isSelected)?Color(0xffbb5c2d):null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (isSelected)? Icon(
          iconBefore,
          color: Colors.white,
          size: (SizeConfig.defaultSize)! * 3,
        ):Icon(
          iconAfter,
          color: Colors.grey,
          size: (SizeConfig.defaultSize)! * 3,
        ),
      ),
    );
  }
}
