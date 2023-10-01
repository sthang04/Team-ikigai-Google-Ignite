import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'article_3.dart';
import 'article_4.dart';
import 'article_1.dart';
import 'article_2.dart';

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
        backgroundColor: Color(0xFFA5D6A7),
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: widget.favoritedItems.length,
        itemBuilder: (context, index) {
          final foodItem = widget.favoritedItems[index];
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
                    if (index >= 0 && index < widget.favoritedItems.length) {
                      // Call the onDeleteItem callback to delete the item
                      widget.onDeleteItem(index);

                      // Use setState to trigger a rebuild of the widget
                      setState(() {
                      
                      });
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}




