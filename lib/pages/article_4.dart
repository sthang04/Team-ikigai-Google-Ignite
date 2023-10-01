import 'package:flutter/material.dart';
import 'favourites.dart';
import 'map.dart';

void main() => runApp(const FoodPage());

class FoodItem {
  final String name;
  final String address;
  final double rating;

  FoodItem({required this.name, required this.address, required this.rating});
}

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
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


// class FoodPage extends StatelessWidget {
//   const FoodPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFA5D6A7),
              title: Text('Sedap!'), // Replace with your desired app bar title
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            body: Center(
                child: SingleChildScrollView(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        'assets/chillicrab.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Chilli Crab'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '#01-04 East Coast Seafood Centre, 1202 East Coast Parkway'),
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
                              name: 'Chilli Crab',
                              address:
                                  '#01-04 East Coast Seafood Centre, 1202 East Coast Parkway',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/chickenrice.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Chicken Rice'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '1 Kadayanallur St, #01-10/11 Maxwell Food Centre'),
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
                              name: 'Chicken Rice',
                              address:
                                  '1 Kadayanallur St, #01-10/11 Maxwell Food Centre',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/charkwayteow.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Char Kway Teow'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '16 Bedok South Road, #01-41 Bedok South Market & Food Centre'),
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
                              name: 'Char Kway Teow',
                              address:
                                  '16 Bedok South Road, #01-41 Bedok South Market & Food Centre',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/nasilemak.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Nasi Lemak'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '#01-106, Boon Lay Place Market and Food Centre, 221 Boon Lay Place'),
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
                              name: 'Nasi Lemak',
                              address:
                                  '#01-106, Boon Lay Place Market and Food Centre, 221 Boon Lay Place',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/kayatoast.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Kaya Toast'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('7 Maxwell Road #02-95 Amoy Street Food Centre'),
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
                              name: 'Kaya Toast',
                              address:
                                  '7 Maxwell Road #02-95 Amoy Street Food Centre',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/satay.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Satay'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '1220 East Coast Parkway, East Coast Lagoon Food Village'),
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
                              name: 'Satay',
                              address:
                                  '1220 East Coast Parkway, East Coast Lagoon Food Village',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/bakkutteh.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Bak Kut Teh'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('11 New Bridge Rd, Upp Circular Rd, #01-01'),
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
                              name: 'Bak Kut Teh',
                              address:
                                  '11 New Bridge Rd, Upp Circular Rd, #01-01',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/sambalstingray.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Sambal Stingray'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Chomp Chomp Food Centre, 20 Kensington Park Road'),
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
                              name: 'Sambal Stingray',
                              address:
                                  'Chomp Chomp Food Centre, 20 Kensington Park Road',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/laksa.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Laksa'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '328 Katong Laksa, 53 East Coast Road, Singapore'),
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
                              name: 'Laksa',
                              address:
                                  '328 Katong Laksa, 53 East Coast Road, Singapore',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/bcm.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      title: Text('Bak Chor Mee'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Blk 466 Crawford Lane'),
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
                              name: 'Bak Chor Mee',
                              address: 'Blk 466 Crawford Lane',
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


