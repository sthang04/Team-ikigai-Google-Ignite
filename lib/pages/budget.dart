import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Planner App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: BudgetPlanner(),
    );
  }
}

class BudgetPlanner extends StatefulWidget {
  @override
  _BudgetPlannerState createState() => _BudgetPlannerState();
}

class _BudgetPlannerState extends State<BudgetPlanner> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA5D6A7),
        title: Text('Budget Planner'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFA5D6A7),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Itinerary'),
          BottomNavigationBarItem(icon: Icon(Icons.place), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }

  final pages = [
    BudgetPlannerPage(),
    // Add other pages like ItineraryPage(), MapPage(), FavouritesPage(),
  ];
}

class BudgetPlannerPage extends StatefulWidget {
  @override
  _BudgetPlannerPageState createState() => _BudgetPlannerPageState();
}

class _BudgetPlannerPageState extends State<BudgetPlannerPage> {
  double weeklyBudget = 0;
  double eatingOutPercentage = 70;
  double groceriesPercentage = 30;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content
          children: [
            Text("Weekly Food Expenses Plan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  weeklyBudget = double.parse(value);
                });
              },
              decoration: InputDecoration(
                labelText: "Enter your weekly budget",
                prefixIcon: Icon(Icons.wallet_travel),
              ),
            ),
            SizedBox(height: 50),
            Text("Eating Out: ${eatingOutPercentage}% of total budget"),
            Slider(
              value: eatingOutPercentage,
              onChanged: (value) {
                setState(() {
                  eatingOutPercentage = value;
                  groceriesPercentage = 100 - value;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              label: "$eatingOutPercentage%",
            ),
            Text("Groceries: ${groceriesPercentage}% of total budget"),
            Slider(
              value: groceriesPercentage,
              onChanged: (value) {
                setState(() {
                  groceriesPercentage = value;
                  eatingOutPercentage = 100 - value;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              label: "$groceriesPercentage%",
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (weeklyBudget > 200) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Budget Alert"),
                      content:
                          Text("Your budget exceeds \$200! Consider revising."),
                      actions: <Widget>[
                        TextButton(
                          child: Text("Okay"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text(
                "Save Budget",
                style: TextStyle(fontSize: 24), // Set the font size of the text
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12), // Increase the size of the button
              ),
            ),
            SizedBox(height: 50),
            Text("Budget Breakdown:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 50,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        color: Colors.blue,
                        child: Center(
                          child: Text("${eatingOutPercentage}% Eating Out"),
                        ),
                      ),
                      flex: eatingOutPercentage.toInt(),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        color: Colors.red,
                        child: Center(
                          child: Text("${groceriesPercentage}% Groceries"),
                        ),
                      ),
                      flex: groceriesPercentage.toInt(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Daily Budget Tip:",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
                "Based on your budget, you can spend ${(weeklyBudget * (eatingOutPercentage / 100) / 7).toStringAsFixed(2)} on eating out daily."),
          ],
        ),
      ),
    );
  }
}
