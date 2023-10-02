import 'package:flutter/material.dart';
import 'article_1.dart';

/* When you'll start changing states
class FavouritesPage extends StatefulWidget{
  const FavouritesPage({super.key});
  @override
  State<FavouritesPage> createState()=>_FavouritesPageState();
}
*/

// class FavouritesPage extends StatelessWidget{
//   const FavouritesPage({super.key});

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFA5D6A7),
//         //centerTitle: false
//         title: Text('Favourites'),
//       ),
//       body: SingleChildScrollView(
//       ),
//     );
//   }
// }

class FavouritesPage extends StatefulWidget {
  final List favoritedItems;
  final Function(int) onDeleteItem; // Callback to delete an item

  FavouritesPage({
    required this.favoritedItems,
    required this.onDeleteItem,
  });

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Favorites', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        itemCount:
            widget.favoritedItems.length + 1, // +1 for the additional ListTile
        itemBuilder: (context, index) {
          if (index == 0) {
            // This is the additional ListTile you want to add with delete button and ratings
            return ListTile(
              title: Text('Lau Pa Sat'),
              subtitle: Text('18 Raffles Quay, Singapore 048582'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('4.5'), // Replace with the actual rating value
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // No need to check bounds since we're not deleting this item
                      // Call the onDeleteItem callback to delete the item
                      // widget.onDeleteItem(0); // Assuming you want to delete the first item

                      // // Use setState to trigger a rebuild of the widget
                      // setState(() {});
                      if (index - 1 >= 0 &&
                          index - 1 < widget.favoritedItems.length) {
                        // Call the onDeleteItem callback to delete the item
                        widget.onDeleteItem(0); // Adjust the index

                        // Use setState to trigger a rebuild of the widget
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
            );
          }
          if (index > 0) {
            // This is for the existing favorited items
            final foodItem =
                widget.favoritedItems[index - 1]; // Adjust the index
            return ListTile(
              title: Text(foodItem.name),
              subtitle: Text(foodItem.address),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(foodItem.rating.toString()),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Check if the index is within bounds before deleting
                      if (index - 1 >= 0 &&
                          index - 1 < widget.favoritedItems.length) {
                        // Call the onDeleteItem callback to delete the item
                        widget.onDeleteItem(index - 1); // Adjust the index

                        // Use setState to trigger a rebuild of the widget
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
