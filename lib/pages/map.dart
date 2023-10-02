import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


/* When you'll start changing states
class MapPage extends StatefulWidget{
  const MapPage({super.key});
  @override
  State<MapPage> createState()=>_MapPageState();
}
*/
// class MapPage extends StatelessWidget{
//   const MapPage({super.key});

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFA5D6A7),
//         //centerTitle: false
//         title: Text('Map'),
//       ),
//       body: SingleChildScrollView(

//       ),
//     );
//   }
// }

// class MapPage extends StatelessWidget {
//   const MapPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         //centerTitle: false
//         title: Text('Map', style: TextStyle(fontWeight: FontWeight.bold)),
//       ),
//       body: SingleChildScrollView(),
//     );
//   }
// }

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  // Function to open Google Maps
  _launchGoogleMaps() async {
    // The URL scheme for launching Google Maps with a specific location or address
    final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=YOUR_LOCATION_OR_ADDRESS';

    // Check if the platform supports launching URLs
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      // Handle error: Cannot launch URL
      throw 'Could not launch $googleMapsUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Map', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Call the function to open Google Maps
            _launchGoogleMaps();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
          ),
          child: Text('Open Google Maps'),
        ),
      ),
    );
  }
}

