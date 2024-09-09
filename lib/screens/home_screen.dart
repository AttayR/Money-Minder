import 'package:flutter/material.dart';
import 'package:pdfmover/screens/add_expense_screen.dart';
import 'package:pdfmover/screens/expense_list_screen.dart';
import 'package:provider/provider.dart';
import '../providers/budget_provider.dart';
import 'set_budget_screen.dart';
import 'package:intl/intl.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = ''; 
  bool searchByTitle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Consumer<BudgetProvider>(
              builder: (ctx, budgetProvider, _) => Card(
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Material(
                        elevation: 8.0,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromARGB(255, 0, 46, 78),
                          ),
                          child: Text(
                            'Total Budget: \$${budgetProvider.budget.monthlyBudget.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              20), 
                      Material(
                        elevation: 8.0, 
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.green, // Remaining Budget color
                          ),
                          child: Text(
                            'Remaining Budget: \$${budgetProvider.budget.remainingBudget.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height:
                            20, // Add some spacing between the budget sections
                      ),
                      Material(
                        elevation: 8.0, // Set the elevation value here
                        borderRadius: BorderRadius.circular(
                            10.0), // Match the border radius of the Container
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.red, // Invested Budget color
                          ),
                          child: Text(
                            'Invested Budget: \$${budgetProvider.budget.investedBudget.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (ctx) => SetBudgetScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 46, 78),
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                      child: const Text(
                        '+ Add Total Income',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => Addexpense()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                      child: const Text(
                        '+ Add New Expense',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Invested ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExpenseListScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'View ALL',
                      style: TextStyle(
                        color: Colors.blue, // Use your preferred color
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Consumer<BudgetProvider>(builder: (ctx, budgetProvider, _) {
              final recentExpenses =
                  budgetProvider.budget.expenses.reversed.take(7).toList();
              final filteredExpenses = searchQuery.isEmpty
                  ? recentExpenses
                  : searchByTitle
                      ? recentExpenses
                          .where((expense) => expense.title
                              .toLowerCase()
                              .contains(searchQuery.toLowerCase()))
                          .toList()
                      : recentExpenses
                          .where((expense) => DateFormat('MMM dd, yyyy')
                              .format(expense.date)
                              .contains(searchQuery))
                          .toList();

              if (recentExpenses.isEmpty) {
                // Display a modern message if no expenses are added yet
                return Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.inbox_rounded,
                          color: Colors.grey[400],
                          size: 80,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'No expenses added yet!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Start by Click on Add New expense.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                // Display the list of recent expenses
                return Expanded(
                  child: ListView.builder(
                    itemCount: recentExpenses.length,
                    itemBuilder: (ctx, index) {
                      final expense = recentExpenses[index];
                      final formattedDate = DateFormat('MMM dd, yyyy h:mm a')
                          .format(expense.date);

                      return Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          leading: const Icon(
                            Icons.attach_money,
                            color: Colors.green,
                          ),
                          title: Text(
                            expense.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            formattedDate,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                          trailing: Text(
                            '\$${expense.amount.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            }),
          ],
        ),
      ),
    );
  }

  void _showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Search Expenses'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Search Query'),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Search by:"),
                  Radio(
                    value: true,
                    groupValue: searchByTitle,
                    onChanged: (value) {
                      setState(() {
                        searchByTitle = value as bool;
                      });
                    },
                  ),
                  const Text("Title"),
                  Radio(
                    value: false,
                    groupValue: searchByTitle,
                    onChanged: (value) {
                      setState(() {
                        searchByTitle = value as bool;
                      });
                    },
                  ),
                  const Text("Date"),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Search'),
            ),
          ],
        );
      },
    );
  }
}
