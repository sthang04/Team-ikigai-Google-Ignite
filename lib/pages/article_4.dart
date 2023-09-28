import 'package:flutter/material.dart';
import 'favourites.dart';
import 'map.dart';

void main() => runApp(const FoodPage());

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});
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
                    const ListTile(
                      leading: Icon(Icons.album),
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
            ))));
  }
}
