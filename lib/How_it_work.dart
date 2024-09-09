import 'package:flutter/material.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
            left: 20.0, right: 20.0, top: 35.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How It Works',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The Money Minder App is designed to help you manage your finances efficiently. With features to set a monthly budget, add expenses, view recent expenses, search for expenses, and print your expense reports, it provides a comprehensive tool for tracking and managing your budget.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              'Key Features',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. Set Monthly Budget',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '2. Add Expense',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '3. View Recent Expenses',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '4. View All Expenses',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '5. Search Expenses',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '6. Print Expense Reports',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              '1. Set Monthly Budget:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            Text(
              'When you first open the app, you can set your monthly budget by clicking the "Set Monthly Budget" button. This takes you to a screen where you can input the desired budget amount. The budget is then displayed on the home screen, along with the remaining budget, which updates as you add expenses.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '2. Add Expense:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            Text(
              'Adding an expense is simple. Click the "Add Expense" button to navigate to a screen where you can enter the expense title and amount. The expense is added to the list, and the remaining budget is updated accordingly.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '3. View Recent Expenses:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            Text(
              'The main screen displays the 5 most recent expenses, providing a quick overview of your latest spending activities. This helps you keep track of recent expenses without leaving the home screen.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '4. View All Expenses:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            Text(
              'For a detailed view, click on the "View All Expenses" button. This takes you to a screen listing all your expenses, including titles, dates, and amounts.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '5. Search Expenses:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            Text(
              'You can search for specific expenses by using the search functionality. This feature helps you quickly find and review particular expenses based on your search criteria.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '6. Print Expense Reports:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            Text(
              'The app allows you to print your expense reports. This feature enables you to generate a physical copy of your expense data for record-keeping or review purposes.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
            left: 20.0, right: 20.0, top: 35.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How It Works',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The Home Budgeting App is designed to help you manage your finances efficiently. With features to set a monthly budget, add expenses, view recent expenses, search for expenses, and print your expense reports, it provides a comprehensive tool for tracking and managing your budget.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              'Key Features',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. Set Monthly Budget',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '2. Add Expense',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '3. View Recent Expenses',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '4. View All Expenses',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '5. Search Expenses',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '6. Print Expense Reports',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              '1. Set Monthly Budget:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            Text(
              'When you first open the app, you can set your monthly budget by clicking the "Set Monthly Budget" button. This takes you to a screen where you can input the desired budget amount. The budget is then displayed on the home screen, along with the remaining budget, which updates as you add expenses.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '2. Add Expense:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'Adding an expense is simple. Click the "Add Expense" button to navigate to a screen where you can enter the expense title and amount. The expense is added to the list, and the remaining budget is updated accordingly.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '3. View Recent Expenses:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'The main screen displays the 5 most recent expenses, providing a quick overview of your latest spending activities. This helps you keep track of recent expenses without leaving the home screen.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '4. View All Expenses:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'For a detailed view, click on the "View All Expenses" button. This takes you to a screen listing all your expenses, including titles, dates, and amounts.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '5. Search Expenses:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'You can search for specific expenses by using the search functionality. This feature helps you quickly find and review particular expenses based on your search criteria.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              '6. Print Expense Reports:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'The app allows you to print your expense reports. This feature enables you to generate a physical copy of your expense data for record-keeping or review purposes.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

