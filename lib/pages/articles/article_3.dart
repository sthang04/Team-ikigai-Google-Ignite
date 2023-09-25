import 'package:flutter/material.dart';

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
              subtitle: Text('1 Fusionopolis Way, #B2-04 Connexis, Singapore 138632'),
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
              title: Text("Seah's Biscuit Shop"),
              subtitle: Text('Block 716 Ang Mo Kio Ave 6, #01-4024, S560716'),
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
              title: Text('CookiesTalk'),
              subtitle: Text('Block 625 Ang Mo Kio Avenue 9, #01-116, Singapore 560625'),
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
              title: Text('The Biscuit Shop'),
              subtitle: Text('Tanjong Pagar Plz, #01-08/09 Block 6, Singapore 081006'),
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
              title: Text('Teck Leong Lee Kee'),
              subtitle: Text('Blk 5029 Ang Mo Kio Industrial Park 2, #01-141, 569532'),
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
              title: Text('Biscuit King'),
              subtitle: Text('130 Casuarina Road, Singapore 579518'),
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
              title: Text('Good Old Days'),
              subtitle: Text('Block 103 Yishun Ring Road (Chong Pang), #01-95, Singapore 760103'),
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
              title: Text('The Buscuit Paradise'),
              subtitle: Text('Kovan 209 Market and Food Centre, 209 Hougang St 21, Singapore 530209'),
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
              title: Text("Nelly's Retro Snacks"),
              subtitle: Text('Punggol Plaza'),
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
              title: Text('SnackFirst'),
              subtitle: Text('18 Boon Lay Way #02-120, Tradehub 21 West Lobby Singapore 609966'),
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