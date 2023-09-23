import 'package:flutter/material.dart';

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