import 'package:belocal_app/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:belocal_app/pages/calendar/calendar_widget.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class ItineraryPage extends StatefulWidget {
  @override
  _ItineraryPageState createState() => _ItineraryPageState();
}

class _ItineraryPageState extends State<ItineraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Make your itinerary',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 625,
              child: CalendarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
