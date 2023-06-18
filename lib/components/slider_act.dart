import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:travelea/screens/home_screen.dart';
import 'package:travelea/utils/app_navigator.dart';
import 'package:travelea/utils/size_config.dart';
class SliderAct extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SlideAction(
        height: (SizeConfig.defaultSize)! * 9,
        onSubmit: (){
          AppNavigator.navigateToNewScreen(true, context, const HomeScreen());
        },
        sliderButtonIcon: Icon(
          Icons.double_arrow_sharp,
          color: Colors.white,
        ),
        alignment: Alignment.center,
        text: 'Swipe to Explore Now',
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: (SizeConfig.defaultSize)! * 1.6,
        ),
        borderRadius: 12,
        elevation: 50,
        innerColor: Colors.black87,
        outerColor: Colors.transparent,
        sliderRotate: false ,
      ),
    );
  }
}
