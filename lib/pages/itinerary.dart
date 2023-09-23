import 'package:flutter/material.dart';

class ItineraryPage extends StatelessWidget{
  const ItineraryPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA5D6A7),
        //centerTitle: false
        title: Text('Make your itinerary'),
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}