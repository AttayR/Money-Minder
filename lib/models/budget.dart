import 'expense.dart';

class Budget {
  final double monthlyBudget;
  double remainingBudget;
  double investedBudget;
  final List<Expense> expenses;

  Budget({
    required this.monthlyBudget,
    required this.remainingBudget,
    required this.investedBudget,
    required this.expenses,
  });

  Map<String, dynamic> toJson() {
    return {
      'monthlyBudget': monthlyBudget,
      'remainingBudget': remainingBudget,
      'investedBudget': investedBudget, // Add this line

      'expenses': expenses.map((e) => e.toJson()).toList(),
    };
  }

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      monthlyBudget: json['monthlyBudget'],
      remainingBudget: json['remainingBudget'],
      investedBudget: json['investedBudget'], // Add this line with a default value

      expenses: (json['expenses'] as List)
          .map((item) => Expense.fromJson(item))
          .toList(),
    );
  }
}
