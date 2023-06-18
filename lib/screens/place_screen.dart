import 'package:flutter/material.dart';
import 'package:travelea/components/app_Button.dart';
import 'package:travelea/components/category_circled.dart';
import 'package:travelea/components/grey_line.dart';
import 'package:travelea/components/head_text.dart';
import 'package:travelea/components/iconed_text.dart';
import 'package:travelea/components/small_text.dart';
import 'package:travelea/models/places.dart';
import 'package:travelea/screens/home_screen.dart';
import 'package:travelea/utils/app_navigator.dart';
import 'package:travelea/utils/size_config.dart';
class PlaceScreen extends StatelessWidget {
  Places? places;

  PlaceScreen({required this.places});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 130,
        leading: InkWell(
          onTap: (){
            AppNavigator.navigateToNewScreen(true, context, const HomeScreen());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back,
                  color: Colors.black,
                ),
                SmallText('Back', color: Colors.black, fountSize: 1.2, withPadding: false),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0,left: 20,bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: NetworkImage((places?.networkImageLink)!),
                fit: BoxFit.fill,
                height: (SizeConfig.defaultSize)!*40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryCircled(text: 'Maps',isSelected: true,netWorkImageLink: 'https://media.istockphoto.com/id/600386524/vector/vector-map-icon-with-pin-pointer-flat-style.jpg?s=612x612&w=0&k=20&c=BTHrMMEdBwP05vcgH9fcNkcSSxs7eVgTVN7uK7Rozak=',),
                  CategoryCircled(text: 'Guide',isSelected: true,netWorkImageLink: 'https://static.vecteezy.com/system/resources/previews/021/127/694/original/tour-guide-man-icon-design-free-vector.jpg',),
                  CategoryCircled(text: '4 day 3 night',isSelected: true,netWorkImageLink: 'https://www.freevector.com/uploads/vector/preview/15926/FreeVector-Sun-And-Moon-Vector.jpg',),
                  CategoryCircled(text: 'Dinner',isSelected: true,netWorkImageLink: 'https://img.freepik.com/free-vector/top-view-modern-restaurant-table-with-flat-design_23-2147903836.jpg',),
                ],
              ),
            ),
            const GreyLine(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadText(places?.name, color: Colors.black, fountSize: 2, withPadding: true),
                IconedText(text: '${places?.rate}(${((places?.reviewNumber)!>1000)?((places?.reviewNumber)!/1000).round().toString()+'k':(places?.reviewNumber)!} review)', icon: Icons.star_border_outlined)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconedText(text: places?.location, icon: Icons.location_on_outlined),
                IconedText(text: 'Map Direction', icon: Icons.location_on,isOrange: true ,),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: HeadText('Description', color: Colors.black, fountSize: 1.8, withPadding: true),),
            SmallText(places?.description, color: Colors.grey, fountSize: 1, withPadding: false),
            Row(
              children: [
                AppButton(text: '\$${(places?.price)?.round()}/person',isOutlined: true,),
                AppButton(text: 'Book Now'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
