import 'package:flutter/material.dart';
import 'itinerary.dart';
import 'article_1.dart';
import 'article_2.dart';
import 'article_3.dart';
import 'article_4.dart';

final pagesRoutes = {
  'article_1': HawkersPage(),
  'article_2': DrinksPage(),
  'article_3': SnacksPage(),
  'article_4': FoodPage(),
};

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA5D6A7),
        title: Text('BeLocal'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.black),
                    SizedBox(width: 10),
                    Text(
                      'Bencoolen',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.notifications), onPressed: () {}),
                    IconButton(icon: Icon(Icons.extension), onPressed: () {}),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Search',
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50, // same height as a TextField by default
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItineraryPage()),
                  );
                },
                child: Text('START YOUR ITINERARY'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Popular',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.0, // Makes it square
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: subpage.map((page) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                pagesRoutes[page] ?? DefaultPage()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/$page.png', fit: BoxFit.cover),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final subpage = ['article_1', 'article_2', 'article_3', 'article_4'];

class DefaultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Default Page"),
      ),
      body: Center(child: Text("This is a default page!")),
    );
  }
}
