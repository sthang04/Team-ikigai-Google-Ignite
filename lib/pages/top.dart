import 'package:belocal_app/pages/favourites.dart';
import 'package:belocal_app/pages/home.dart';
import 'package:belocal_app/pages/itinerary.dart';
import 'package:belocal_app/pages/map.dart';
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});
  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        //comment out if you think styling looks better with icon name included underneath
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: currentIndex == 0 ? Colors.white : Colors.grey[900],
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.event_outlined,
                color: currentIndex == 1 ? Colors.white : Colors.grey[900],
              ),
              label: 'Itinerary'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.place_outlined,
                color: currentIndex == 2 ? Colors.white : Colors.grey[900],
              ),
              label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outlined,
                color: currentIndex == 3 ? Colors.white : Colors.grey[900],
              ),
              label: 'Favourites'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
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
