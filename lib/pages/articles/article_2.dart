import 'package:flutter/material.dart';

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
              subtitle: Text('O’Coffee Club, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Teh Tarik'),
              subtitle: Text('Mr. Teh Tarik, Bedok, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Bandung'),
              subtitle: Text('Power Rojak Bandung, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Tiger Beer'),
              subtitle: Text('Tiger Brewery Tour, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Sugarcane Juice'),
              subtitle: Text('Victory Sugarcane Juice, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Chin Chow Drink'),
              subtitle: Text('Shun Xing Coffee Stall, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Singapore Sling'),
              subtitle: Text('Long Bar, Raffel Hotel, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Penicillin Cocktail'),
              subtitle: Text('Skinny’s Lounge, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Cider'),
              subtitle: Text('Adstragold, Katong, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Bubble Tea'),
              subtitle: Text('Woobbee, Singapore'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.place), // Replace with your map icon
                    onPressed: () {
                      // Handle map icon click here
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.favorite), // Replace with your favorite icon
                    onPressed: () {
                      // Handle favorite icon click here
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