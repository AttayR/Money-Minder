import 'package:flutter/material.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to the Money Mind App. Your privacy is important to us. This Privacy Policy explains how we collect, use, and safeguard your information when you use our application.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              '1. Information We Collect',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We collect information in the following ways:',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 10),
            Text(
              '• Personal Information: We do not collect personal identification information such as names, addresses, email addresses, or phone numbers.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 5),
            Text(
              '• Usage Data: We collect non-personal information about your use of the app, including device type, operating system, app interactions, and diagnostic data.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              '2. How We Use Your Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We use the collected information for the following purposes:',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 10),
            Text(
              '• To Provide and Maintain Our Service: Ensuring the app functions correctly and efficiently.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 5),
            Text(
              '• To Improve Our Service: Enhancing features and user experience based on how users interact with the app.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 5),
            Text(
              '• To Detect and Prevent Issues: Identifying and resolving technical and security problems.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              '3. Data Storage and Security',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '• Storage: Data you input is stored locally on your device. We do not store or access this data on our servers.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 5),
            Text(
              '• Security: We use appropriate security measures to protect your data. However, no method of electronic storage is 100% secure.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              '4. Sharing Your Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We do not sell, trade, or transfer your information to outside parties. We may share generic, aggregated demographic information with our partners for the purposes outlined above.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              '5. Third-Party Services',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Our app may include links to third-party services. These services have their own privacy policies, and we are not responsible for their practices.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              '6. Changes to This Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:  const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We may update this Privacy Policy from time to time. Any changes will be posted on this page and will take effect immediately upon posting.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
