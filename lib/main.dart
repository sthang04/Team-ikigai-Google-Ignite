import 'package:belocal_app/pages/top.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:intl/date_symbol_data_local.dart';

void main() async{
  await initializeDateFormatting();
  runApp(const MyApp());
=======
import 'package:provider/provider.dart';
import 'pages/allfavourites.dart';


// void main() {
//   runApp(const MyApp());
// }

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoritedItemsProvider(),
      child: const MyApp(),
    ),
  );
>>>>>>> 8a487fd043321ac4e18c88feaf4e594e51275b0a
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: 'Arial',
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: TopPage(),
    );
  }
}
