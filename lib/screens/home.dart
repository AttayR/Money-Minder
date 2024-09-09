import 'package:flutter/material.dart';
import 'package:pdfmover/providers/budget_provider.dart';
import 'package:pdfmover/screens/add_expense_screen.dart';
import 'package:pdfmover/screens/expense_list_screen.dart';
import 'package:pdfmover/screens/set_budget_screen.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Consumer<BudgetProvider>(
            builder: (ctx, budgetProvider, _) => Card(
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Monthly Budget: \$${budgetProvider.budget.monthlyBudget.toStringAsFixed(2)}',
                    ),
                    Text(
                      'Remaining Budget: \$${budgetProvider.budget.remainingBudget.toStringAsFixed(2)}',
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => SetBudgetScreen()),
              );
            },
            child: Text('Set Monthly Budget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => AddExpenseScreen()),
              );
            },
            child: Text('Add Expense'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => ExpenseListScreen()),
              );
            },
            child: Text('View Expenses'),
          ),
        ],
      ),
    );
  }
}
