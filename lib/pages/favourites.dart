import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget{
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA5D6A7),
        //centerTitle: false
        title: Text('Favourites'),
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}