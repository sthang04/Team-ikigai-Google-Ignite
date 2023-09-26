import 'package:flutter/material.dart';
import 'favourites.dart';
import 'map.dart';

void main() => runApp(const DrinksPage());

class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA5D6A7),
          title: Text('Shiok drinks'), // Replace with your desired app bar title
        ),
        body: Center(
      child: SingleChildScrollView(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Kopi-O'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('O’Coffee Club, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Teh Tarik'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mr. Teh Tarik, Bedok, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Bandung'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Power Rojak Bandung, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Tiger Beer'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tiger Brewery Tour, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Sugarcane Juice'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Victory Sugarcane Juice, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Chin Chow Drink'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shun Xing Coffee Stall, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Singapore Sling'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Long Bar, Raffel Hotel, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Penicillin Cocktail'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Skinny’s Lounge, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Cider'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adstragold, Katong, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Bubble Tea'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Woobbee, Singapore'),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star_half, color: Colors.yellow),
                              Icon(Icons.star_border, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                       Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(),
                              ),
                            );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
          ],
        ),
      ),
    )
    )
      )
    );
  }
}