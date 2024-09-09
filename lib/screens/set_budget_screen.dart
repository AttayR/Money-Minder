// import 'package:flutter/material.dart';
// import 'package:pdfmover/main.dart';
// import 'package:provider/provider.dart';
// import '../providers/budget_provider.dart';

// class Totalbudget extends StatelessWidget {
//   const Totalbudget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SetBudgetScreen();
//   }
// }

// class SetBudgetScreen extends StatefulWidget {
//   @override
//   _SetBudgetScreenState createState() => _SetBudgetScreenState();
// }

// class _SetBudgetScreenState extends State<SetBudgetScreen> {
//   final _budgetController = TextEditingController();

//   void _submitData() {
//     final enteredAmount = double.parse(_budgetController.text);

//     if (enteredAmount <= 0) {
//       return;
//     }

//     Provider.of<BudgetProvider>(context, listen: false)
//         .setMonthlyBudget(enteredAmount);

//     Navigator.of(context).pop();
//     Navigator.of(context).push(
//       MaterialPageRoute(builder: (ctx) => MyApp()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Set Monthly Budget',style:TextStyle(color:Colors.white)),
//         backgroundColor: const Color.fromARGB(255, 0, 46, 78),
//          iconTheme: const IconThemeData(
//           color: Colors.white, 
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _budgetController,
//               decoration: InputDecoration(
//                 labelText: 'Monthly Budget',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 contentPadding: const EdgeInsets.symmetric(
//                     horizontal: 16.0, vertical: 12.0),
//                 filled: true,
//                 fillColor: Colors.grey[200],
//               ),
//               keyboardType: TextInputType.numberWithOptions(decimal: true),
//               textInputAction: TextInputAction.done,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _submitData,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 0, 46, 78),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 24.0),
//               ),
//               child: const Text(
//                 'Set Budget',
//                 style: TextStyle(color: Colors.white, fontSize: 16.0),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pdfmover/main.dart';
import 'package:provider/provider.dart';
import '../providers/budget_provider.dart';

class Totalbudget extends StatelessWidget {
  const Totalbudget({super.key});

  @override
  Widget build(BuildContext context) {
    return SetBudgetScreen();
  }
}

class SetBudgetScreen extends StatefulWidget {
  @override
  _SetBudgetScreenState createState() => _SetBudgetScreenState();
}

class _SetBudgetScreenState extends State<SetBudgetScreen> {
  final _budgetController = TextEditingController();

  void _submitData() {
    final enteredAmount = double.parse(_budgetController.text);

    if (enteredAmount <= 0) {
      return;
    }

    Provider.of<BudgetProvider>(context, listen: false)
        .setMonthlyBudget(enteredAmount);

    // Reset or clear existing data when a new budget is set
    // You can add logic here to clear the existing records if needed

    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => MyApp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Monthly Budget', style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Update Your Monthly Budget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              
              'Setting a new monthly budget will reset all your previous data, including any transactions, savings, or goals associated with the old budget. Please confirm if you want to proceed.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _budgetController,
              decoration: InputDecoration(
                labelText: 'Enter New Monthly Budget',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _submitData,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 46, 78),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 24.0),
                ),
                child: const Text(
                  'Set Budget',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                '* Note: All previous data will be erased when setting a new budget.',
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
