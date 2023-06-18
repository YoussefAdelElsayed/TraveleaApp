import 'package:flutter/material.dart';
import 'package:travelea/components/circle_icon.dart';
import 'package:travelea/components/pricing.dart';
import 'package:travelea/models/places.dart';
import 'package:travelea/screens/place_screen.dart';
import 'package:travelea/utils/app_navigator.dart';
import 'package:travelea/utils/size_config.dart';
import 'head_text.dart';
import 'iconed_text.dart';
class PlaceCard extends StatelessWidget {
  Places? places;

  PlaceCard({required this.places});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        onTap: (){
          AppNavigator.navigateToNewScreen(false, context, PlaceScreen(places: places));
        },
        child: Container(
          width: (SizeConfig.defaultSize)! * 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: NetworkImage((places?.networkImageLink)!),
                      ),
                    ),
                    CircleIcon(smallIcon: Icons.favorite_border_outlined),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    HeadText(places?.name, color: Colors.black, fountSize: 1.6, withPadding: true),
                    IconedText(text: '${places?.rate}', icon: Icons.star_border_outlined)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconedText(text: places?.location, icon: Icons.location_on_outlined),
                    Pricing(price: '${places?.price}', withButton: false),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
