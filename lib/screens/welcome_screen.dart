import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:travelea/components/head_text.dart';
import 'package:travelea/components/slider_act.dart';
import 'package:travelea/components/small_text.dart';
import 'package:travelea/utils/size_config.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Color(0xffffe7cd),
      body: Stack(
          children: [
            Image(
              height: SizeConfig.screenHeight,
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/images/travelea-home-screen.png'),
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.only(top: (SizeConfig.defaultSize)! * 5,bottom: (SizeConfig.defaultSize)! * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      HeadText('Explore Beauty of Journey',color: Colors.black,fountSize: 4,withPadding: true,),
                      SmallText('Everything you can imagine, is her',color: Colors.black,fountSize: 1.2,withPadding: true,),
                    ],
                  ),
                  SliderAct(),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
