import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Planner App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.redAccent,
        colorScheme:
            ThemeData().colorScheme.copyWith(secondary: Colors.orangeAccent),
      ),
      home: BudgetPlanner(),
    );
  }
}

class BudgetPlanner extends StatefulWidget {
  @override
  _BudgetPlannerState createState() => _BudgetPlannerState();
}

class _BudgetPlannerState extends State<BudgetPlanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
      body: BudgetPlannerPage(),
    );
  }
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
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.food_bank_outlined),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Weekly Food Expenses Plan",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
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
            Row(
              children: [
                Icon(Icons.restaurant_menu),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                      "Eating Out: ${eatingOutPercentage}% of total budget"),
                ),
              ],
            ),
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
              activeColor: Colors.blue, // Set the active color to blue
            ),
            Text("Groceries: ${groceriesPercentage}% of total budget"),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (weeklyBudget == 0) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Input Missing"),
                      content: Text("Please enter a value."),
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
                } else if (weeklyBudget > 200) {
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
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 16,
                      child: Container(
                        height: 100,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check,
                              size: 28,
                              color: Colors.green,
                            ),
                            SizedBox(height: 10),
                            Text("Saved!"),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
              child: Text(
                "Save Budget",
                style: TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                          child: Text(
                            "${eatingOutPercentage}% Eating Out",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      flex: eatingOutPercentage.toInt(),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        color: Colors.orange,
                        child: Center(
                          child: Text(
                            "${groceriesPercentage}% Groceries",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      flex: groceriesPercentage.toInt(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Daily Budget Tip:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Based on your budget, you can spend ${(weeklyBudget * (eatingOutPercentage / 100) / 7).toStringAsFixed(2)} on eating out daily.",
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
