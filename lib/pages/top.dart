import 'package:belocal_app/pages/favourites.dart';
import 'package:belocal_app/pages/home.dart';
import 'package:belocal_app/pages/itinerary.dart';
import 'package:belocal_app/pages/map.dart';
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget{
  const TopPage({super.key});
  @override
  State<TopPage> createState()=>_TopPageState();
}
class _TopPageState extends State<TopPage>{
  int currentIndex=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFA5D6A7),
        //comment out if you think styling looks better with icon name included underneath
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event),label:'Itinerary'),
          BottomNavigationBarItem(icon: Icon(Icons.place),label:'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label:'Favourites'),
        ],
        currentIndex: currentIndex,
        onTap:(index){
          setState((){
            currentIndex=index;
          });
        },
      ),
    );
  }
  final pages = [
    HomePage(),
    ItineraryPage(),
    MapPage(),
    FavouritesPage(),
  ];
}