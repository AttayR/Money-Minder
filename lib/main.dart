import 'package:flutter/material.dart';
import 'package:pdfmover/How_it_work.dart';
import 'package:pdfmover/contact_us.dart';
import 'package:pdfmover/privacy_policy.dart';
import 'package:pdfmover/screens/add_expense_screen.dart';
import 'package:pdfmover/screens/expense_list_screen.dart';
import 'package:pdfmover/screens/home_screen.dart';
import 'package:pdfmover/screens/set_budget_screen.dart';
import 'package:provider/provider.dart';
import './providers/budget_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => BudgetProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Budgeting',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage(),
        routes: {
          '/home': (context) => Mainpage(),
        },
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  static const List _bodyoption = [
    Mainpage(),
    Addexpense(),
    Listscreen(),
  ];

  static const List<Widget> _drawerScreens = [
    Mainpage(),
    Addexpense(),
    Listscreen(),
    Totalbudget(),
    Contactus(),
    HowItWorks(),
    Privacypolicy(),
  ];

  static const List<String> _drawerScreenNames = [
    'Home',
    'Add Expense',
    'List Expense',
    'Add Budget',
    'Contact Us',
    'How It Works',
    'Privacy Policy',
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onDrawerTap(int index) {
    setState(() {
      _selectedIndex = index + _bodyoption.length;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            children: <TextSpan>[
              
              TextSpan(
                  text: 'Money ',
                  style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold)),
              TextSpan(
                  text: 'Minder',
                  style: TextStyle(color: Colors.green,fontWeight:FontWeight.bold)),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 46, 78),
        iconTheme: const IconThemeData(color: Colors.white,),
      ),
      body: Container(
        child: _selectedIndex < _bodyoption.length
            ? _bodyoption[_selectedIndex]
            : _drawerScreens[_selectedIndex - _bodyoption.length],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 46, 78),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Money',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red, // Red color for 'Money'
            ),
          ),
          TextSpan(
            text: ' Minder',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green, // Green color for 'Minder'
            ),
          ),
        ],
      ),
    ),
    SizedBox(height: 10),
    Text(
      'Manage your budget efficiently',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white70,
      ),
    ),
  ],
),

            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: _drawerScreenNames.length,
                itemBuilder: (context, index) {
                  final isSelected = _selectedIndex == index + _bodyoption.length;
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(
                      _getIconForIndex(index),
                      color: isSelected ? const Color.fromARGB(255, 0, 46, 78) : Colors.grey,
                    ),
                    title: Text(
                      _drawerScreenNames[index],
                      style: TextStyle(
                        color: isSelected ? const Color.fromARGB(255, 0, 46, 78) : Colors.black,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    onTap: () {
                      onDrawerTap(index);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Expense',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
        currentIndex: _selectedIndex < _bodyoption.length ? _selectedIndex : 0,
        onTap: onTap,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromRGBO(5, 60, 224, 1),
        backgroundColor: const Color.fromARGB(255, 0, 46, 78),
      ),
    );
  }

  IconData _getIconForIndex(int index) {
    // Provide icons for your drawer items based on index or name
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.add;
      case 2:
        return Icons.list;
      case 3:
        return Icons.calendar_today;
      case 4:
        return Icons.contact_phone;
      case 5:
        return Icons.info;
      case 6:
        return Icons.policy;
      default:
        return Icons.help;
    }
  }
}
