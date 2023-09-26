import 'package:flutter/material.dart';


/* When you'll start changing states
class MapPage extends StatefulWidget{
  const MapPage({super.key});
  @override
  State<MapPage> createState()=>_MapPageState();
}
*/
class MapPage extends StatelessWidget{
  const MapPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA5D6A7),
        //centerTitle: false
        title: Text('Map'),
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}

// const ListTile(
//   leading: Icon(Icons.album),
//   title: Text('Lau Pa Sat'),
//   subtitle: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text('18 Raffles Quay, Singapore 048582'),
//       Row(
//         children: [
//           Icon(Icons.star, color: Colors.yellow),
//           Icon(Icons.star, color: Colors.yellow),
//           Icon(Icons.star, color: Colors.yellow),
//           Icon(Icons.star_half, color: Colors.yellow),
//           Icon(Icons.star_border, color: Colors.yellow),
//         ],
//       ),
//     ],
//   ),
// ),
