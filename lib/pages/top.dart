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
          BottomNavigationBarItem(icon: Icon(Icons.home, color: currentIndex == 0 ? Colors.green[900] : Colors.grey[700],),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event, color: currentIndex == 1 ? Colors.green[900] : Colors.grey[700],),label:'Itinerary'),
          BottomNavigationBarItem(icon: Icon(Icons.place, color: currentIndex == 2 ? Colors.green[900] : Colors.grey[700],),label:'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: currentIndex == 3 ? Colors.green[900] : Colors.grey[700],),label:'Favourites'),
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
    FavouritesPage(favoritedItems: [], onDeleteItem: (index) {}),
  ];
}


