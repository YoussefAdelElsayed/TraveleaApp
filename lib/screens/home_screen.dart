import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelea/components/category.dart';
import 'package:travelea/components/category_circled.dart';
import 'package:travelea/components/category_type.dart';
import 'package:travelea/components/circle_icon.dart';
import 'package:travelea/components/circle_image.dart';
import 'package:travelea/components/head_text.dart';
import 'package:travelea/components/icon_selection.dart';
import 'package:travelea/components/iconed_text.dart';
import 'package:travelea/components/place_card.dart';
import 'package:travelea/components/pricing.dart';
import 'package:travelea/components/search_bar.dart';
import 'package:travelea/components/small_text.dart';
import 'package:travelea/models/categories.dart';
import 'package:travelea/models/city_filters.dart';
import 'package:travelea/models/places.dart';
import 'package:travelea/utils/size_config.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int categoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height:( SizeConfig.defaultSize)! * 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleImage(radius: (SizeConfig.defaultSize)!*4, withBorder: true, networkImageLink: 'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText('Welcome Back 👋', color: Colors.grey[700], fountSize: 1.2,withPadding: false,),
                    HeadText('Mahmoud Abdalla', color: Colors.black87, fountSize: 1.8,withPadding: false,),
                  ],
                ),
                CircleIcon(smallIcon: Icons.notifications_on_outlined),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SearchBar(),
            ),

            //this will be listview
            Expanded(
              flex: 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  categoryIndex = index;
                  return Category(categories: categories[index]);
                },
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: HeadText('Explore Cities', color: Colors.black, fountSize: 1.8, withPadding: true),),
            //this will be listview
            Expanded(
              flex: 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cityFilters.length,
                itemBuilder: (context,index){
                  return CategoryType(cityFilters: cityFilters[index]);
                },
              ),
            ),
            //this will be listview
            Expanded(
              flex: 12,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (context,index){
                  return PlaceCard(places: places[index]);
                },
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: HeadText('Popular Categories', color: Colors.black, fountSize: 1.8, withPadding: true),),
            //this will be listview
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryCircled(text: 'Flights',isSelected: true,netWorkImageLink: 'https://img.freepik.com/premium-vector/airplane-illustration-view-flying-aircraft_498048-199.jpg?w=2000',),
                  CategoryCircled(text: 'Hotels',isSelected: true,netWorkImageLink: 'https://icon-library.com/images/hotel-icon-vector/hotel-icon-vector-3.jpg',),
                  CategoryCircled(text: 'Transports',isSelected: true,netWorkImageLink: 'https://img.freepik.com/free-vector/urban-public-passenger-vehicles-template_1284-39249.jpg?w=2000',),
                  CategoryCircled(text: 'Events',isSelected: true,netWorkImageLink: 'https://thumbs.dreamstime.com/b/corporate-event-vector-concept-metaphor-party-employees-business-partners-people-dancing-drinking-having-fun-management-191129648.jpg',),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffeccdae)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconSelection(iconAfter: Icons.home_outlined, iconBefore: Icons.home,isSelected: true,),
                    IconSelection(iconAfter: Icons.arrow_drop_down_circle_outlined, iconBefore: Icons.arrow_drop_down_circle),
                    IconSelection(iconAfter: Icons.assignment_outlined, iconBefore: Icons.assignment),
                    IconSelection(iconAfter: Icons.favorite_border_outlined, iconBefore: Icons.favorite),
                    IconSelection(iconAfter: Icons.person_outlined, iconBefore: Icons.person),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
