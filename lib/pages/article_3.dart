import 'package:flutter/material.dart';
import 'favourites.dart';
import 'map.dart';

void main() => runApp(const SnacksPage());

class SnacksPage extends StatelessWidget {
  const SnacksPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA5D6A7),
          title: Text('Old School Hunt'), // Replace with your desired app bar title
        ),
        body: Center(
      child: SingleChildScrollView(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('King of Snacks'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1 Fusionopolis Way, #B2-04 Connexis, Singapore 138632'),
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
              title: Text("Seah's Biscuit Shop"),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Block 716 Ang Mo Kio Ave 6, #01-4024, S560716'),
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
              title: Text('CookiesTalk'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Block 625 Ang Mo Kio Avenue 9, #01-116, Singapore 560625'),
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
              title: Text('The Biscuit Shop'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tanjong Pagar Plz, #01-08/09 Block 6, Singapore 081006'),
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
              title: Text('Teck Leong Lee Kee'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Blk 5029 Ang Mo Kio Industrial Park 2, #01-141, 569532'),
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
              title: Text('Biscuit King'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('130 Casuarina Road, Singapore 579518'),
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
              title: Text('Good Old Days'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Block 103 Yishun Ring Road (Chong Pang), #01-95, Singapore 760103'),
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
              title: Text('The Biscuit Paradise'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kovan 209 Market and Food Centre, 209 Hougang St 21, Singapore 530209'),
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
              title: Text("Nelly's Retro Snacks"),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Punggol Plaza'),
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
              title: Text('SnackFirst'),
              subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('18 Boon Lay Way #02-120, Tradehub 21 West Lobby Singapore 609966'),
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