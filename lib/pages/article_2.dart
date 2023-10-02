import 'package:flutter/material.dart';
import 'favourites.dart';
import 'map.dart';


void main() => runApp(const DrinksPage());

class FoodItem {
  final String name;
  final String address;
  final double rating;

  FoodItem({required this.name, required this.address, required this.rating});
}

class DrinksPage extends StatefulWidget {
  const DrinksPage({super.key});

  @override
  _DrinksPageState createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
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

// class DrinksPage extends StatelessWidget {
//   const DrinksPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFA5D6A7),
              title: Text(
                  'Shiok drinks'), // Replace with your desired app bar title
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
                        '../../assets/kopi.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Kopi-O',
                              address: 'O’Coffee Club, Singapore',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/tehtarik.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Teh Tarik',
                              address: 'Mr. Teh Tarik, Bedok, Singapore',
                              rating: 4.5,
                            )); 
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/bandung.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Bandung',
                              address: 'Power Rojak Bandung, Singapore',
                              rating: 4.5,
                            )); 
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/tigerbeer.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Tiger Beer',
                              address: 'Tiger Brewery Tour, Singapore',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/sugarcane.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Sugarcane Juice',
                              address: 'Victory Sugarcane Juice, Singapore',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/chinchow.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Chin Chow Drink',
                              address: 'Shun Xing Coffee Stall, Singapore',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/sgsling.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Singapore Sling',
                              address: 'Long Bar, Raffel Hotel, Singapore',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/penicillin.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Penicillin Cocktail',
                              address: 'Skinny’s Lounge, Singapore',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/cider.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Cider',
                              address: 'Adstragold, Katong, Singapore',
                              rating: 4.5,
                            ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    ListTile(
                      leading: Image.asset(
                        '../../assets/bubbletea.png', // Replace with the path to your image asset
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                              name: 'Bubble Tea',
                              address: 'Woobbee, Singapore',
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
