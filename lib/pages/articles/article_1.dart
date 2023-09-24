import 'package:flutter/material.dart';

void main() => runApp(const HawkersPage());

class HawkersPage extends StatelessWidget {
  const HawkersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA5D6A7),
          title: Text('Top 10 Hawkers'), // Replace with your desired app bar title
        ),
        body: Center(
      child: SingleChildScrollView(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Lau Pa Sat'),
              subtitle: Text('18 Raffles Quay, Singapore 048582'),
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
              title: Text('Maxwell Food Centre'),
              subtitle: Text('1 Kadayanallur St, Singapore 069184'),
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
              title: Text('Old Airport Road Food Centre'),
              subtitle: Text('51 Old Airport Rd, Singapore 390051'),
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
              title: Text('Adam Road Food Centre'),
              subtitle: Text('2 Adam Road, Singapore 289876'),
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
              title: Text('Amoy Street Food Center'),
              subtitle: Text('7 Maxwell Road, Singapore 069111'),
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
              title: Text('Chinatown Complex'),
              subtitle: Text('335 Smith Street, Singapore 050335'),
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
              title: Text('Tiong Bahru Food Centre'),
              subtitle: Text('30 Seng Poh Road, Singapore 168898'),
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
              title: Text('Tekka Centre'),
              subtitle: Text('665 Buffalo Road, Singapore 210665'),
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
              title: Text('Newton Food Centre'),
              subtitle: Text('500 Clemenceau Avenue North, Singapore 229495'),
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
              title: Text('Ghim Moh Market and Food Centre'),
              subtitle: Text('20 Ghim Moh Road, Singapore 270020'),
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