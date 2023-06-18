import 'package:flutter/material.dart';
import 'package:travelea/utils/size_config.dart';
class Pricing extends StatelessWidget {
  String? price;
  bool? withButton;

  Pricing({required this.price,required this.withButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('\$$price',
          style: TextStyle(
            color: Color(0xffbb5c2d),
            fontWeight: FontWeight.bold,
            fontSize: (SizeConfig.defaultSize)! * 1.5,
          ),
        ),
        Text('/person',
          style: TextStyle(
            color: (withButton)!?Color(0xffbb5c2d) : Colors.grey,
            fontSize: (SizeConfig.defaultSize)! * 1.2,
          ),
        ),
      ],
    );
  }
}
