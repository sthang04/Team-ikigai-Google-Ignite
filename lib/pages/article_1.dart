import 'package:flutter/material.dart';
import 'favourites.dart';
import 'map.dart';

void main() => runApp(const HawkersPage());

class FoodItem {
  final String name;
  final String address;
  final double rating;

  FoodItem({required this.name, required this.address, required this.rating});
}

class HawkersPage extends StatefulWidget {
  const HawkersPage({super.key});

  @override
  _HawkersPageState createState() => _HawkersPageState();
}

class _HawkersPageState extends State<HawkersPage> {
  List<FoodItem> favoritedItems = [];

  void addToFavorites(FoodItem foodItem) {
    setState(() {
      favoritedItems.add(foodItem);
    });
  }

  void removeFromFavorites(int index) {
    setState(() {
      favoritedItems.removeAt(index);
    });
  }

// }

// class HawkersPage extends StatelessWidget {
//   const HawkersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text('Top 10 Hawkers'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            body: Center(
                // Start the body property here
                child: SingleChildScrollView(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        '../../assets/lau_pa_sat.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Lau Pa Sat'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('18 Raffles Quay, Singapore 048582'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );

                            addToFavorites(FoodItem(
                              name: 'Lau Pa Sat',
                              address: '18 Raffles Quay, Singapore 048582',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/maxwell.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Maxwell Food Centre'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1 Kadayanallur St, Singapore 069184'),
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
                      // subtitle: Text('1 Kadayanallur St, Singapore 069184'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );

                            addToFavorites(FoodItem(
                              name: 'Maxwell Food Centre',
                              address: '1 Kadayanallur St, Singapore 069184',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    // leading: Icon(Icons.album),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/old_airport_road.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Old Airport Road Food Centre'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('51 Old Airport Rd, Singapore 390051'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );
                            addToFavorites(FoodItem(
                              name: 'Old Airport Road Food Centre',
                              address: '51 Old Airport Rd, Singapore 390051',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/adam_road.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Adam Road Food Centre'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('2 Adam Road, Singapore 289876'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );
                            addToFavorites(FoodItem(
                              name: 'Adam Road Food Centre',
                              address: '2 Adam Road, Singapore 289876',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/amoy_street.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Amoy Street Food Center'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('7 Maxwell Road, Singapore 069111'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );
                            addToFavorites(FoodItem(
                              name: 'Amoy Street Food Center',
                              address: '7 Maxwell Road, Singapore 069111',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/chinatown_complex.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Chinatown Complex'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('335 Smith Street, Singapore 050335'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );
                            addToFavorites(FoodItem(
                              name: 'Chinatown Complex',
                              address: '335 Smith Street, Singapore 050335',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/tiong_bahru.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Tiong Bahru Food Centre'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('30 Seng Poh Road, Singapore 168898'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );
                            addToFavorites(FoodItem(
                              name: 'Tiong Bahru Food Centre',
                              address: '30 Seng Poh Road, Singapore 168898',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/tekka.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Tekka Centre'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('665 Buffalo Road, Singapore 210665'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );
                            addToFavorites(FoodItem(
                              name: 'Tekka Centre',
                              address: '665 Buffalo Road, Singapore 210665',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/newton.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Newton Food Centre'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('500 Clemenceau Avenue North, Singapore 229495'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );
                            addToFavorites(FoodItem(
                              name: 'Newton Food Centre',
                              address:
                                  '500 Clemenceau Avenue North, Singapore 229495',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/ghim_moh.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Ghim Moh Market and Food Centre'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('20 Ghim Moh Road, Singapore 270020'),
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
                          icon: Icon(Icons
                              .favorite), // Replace with your favorite icon
                          onPressed: () {
                            // Handle favorite icon click here
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FavouritesPage(
                                  favoritedItems: favoritedItems,
                                  onDeleteItem: removeFromFavorites,
                                ),
                              ),
                            );
                            addToFavorites(FoodItem(
                              name: 'Ghim Moh Market and Food Centre',
                              address: '20 Ghim Moh Road, Singapore 270020',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ))));
  }
}
