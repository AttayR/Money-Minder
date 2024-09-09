// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';
// import '../models/expense.dart';
// import '../models/budget.dart';

// class BudgetProvider with ChangeNotifier {
//   Budget _budget = Budget(
//     monthlyBudget: 0,
//     remainingBudget: 0,
//     investedBudget: 0,
//     expenses: [],
//   );

//   BudgetProvider() {
//     _loadFromPrefs();
//   }

//   Budget get budget => _budget;

//   void setMonthlyBudget(double amount) {
//     _budget = Budget(
//       monthlyBudget: amount,
//       remainingBudget: amount,
//       investedBudget: _budget.investedBudget,
//       expenses: _budget.expenses, // Retain existing expenses
//     );
//     _saveToPrefs();
//     notifyListeners();
//   }

//   void addExpense(String title, double amount) {
//     if (amount <= 0) {
//       // Prevent adding an expense with non-positive amount
//       return;
//     }

//     final newExpense = Expense(
//       id: DateTime.now().toString(),
//       title: title,
//       amount: amount,
//       date: DateTime.now(),
//     );

//     _budget.expenses.add(newExpense);
//     _budget.investedBudget += amount; 
//     _budget.remainingBudget -= amount; 
//     _saveToPrefs();
//     notifyListeners();
//   }

//   void investBudget(double amount) {
//     if (amount <= 0) {
//       return;
//     }

//     _budget.investedBudget += amount;
//     _budget.remainingBudget -= amount;
//     _saveToPrefs();
//     notifyListeners();
//   }

//   void _saveToPrefs() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString('budget', json.encode(_budget.toJson()));
//   }

//   void _loadFromPrefs() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? budgetString = prefs.getString('budget');
//     if (budgetString != null) {
//       _budget = Budget.fromJson(json.decode(budgetString));
//     }
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/expense.dart';
import '../models/budget.dart';

class BudgetProvider with ChangeNotifier {
  Budget _budget = Budget(
    monthlyBudget: 0,
    remainingBudget: 0,
    investedBudget: 0,
    expenses: [],
  );

  BudgetProvider() {
    _loadFromPrefs();
  }

  Budget get budget => _budget;

  void setMonthlyBudget(double amount) {
    _budget = Budget(
      monthlyBudget: amount,
      remainingBudget: amount, // Reset remaining budget to new amount
      investedBudget: 0, // Reset invested budget to zero
      expenses: [], // Clear expenses
    );
    _saveToPrefs();
    notifyListeners();
  }

  void addExpense(String title, double amount) {
    if (amount <= 0) {
      // Prevent adding an expense with non-positive amount
      return;
    }

    final newExpense = Expense(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    _budget.expenses.add(newExpense);
    _budget.investedBudget += amount; 
    _budget.remainingBudget -= amount; 
    _saveToPrefs();
    notifyListeners();
  }

  void investBudget(double amount) {
    if (amount <= 0) {
      return;
    }

    _budget.investedBudget += amount;
    _budget.remainingBudget -= amount;
    _saveToPrefs();
    notifyListeners();
  }

  void _saveToPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('budget', json.encode(_budget.toJson()));
  }

  void _loadFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? budgetString = prefs.getString('budget');
    if (budgetString != null) {
      _budget = Budget.fromJson(json.decode(budgetString));
    }
    notifyListeners();
  }
}
