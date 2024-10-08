// class Expense {
//   final String id;
//   final String title;
//   final double amount;
//   final DateTime date;

//   Expense(
//       {required this.id,
//       required this.title,
//       required this.amount,
//       required this.date});
// }

// expense.dart
class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Expense({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'amount': amount,
      'date': date.toIso8601String(),
    };
  }

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(
      id: json['id'],
      title: json['title'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
    );
  }
}
