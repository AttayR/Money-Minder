import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatelessWidget {
  const Contactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          height: 140,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Text('For any Imformation to Contact Us ')
            ],
          ),
        ),
        Container(alignment: Alignment.center, child: Buttonlist())
      ]),
    );
  }
}

class Buttonlist extends StatefulWidget {
  const Buttonlist({super.key});

  @override
  State<Buttonlist> createState() => _ButtonlistState();
}

class _ButtonlistState extends State<Buttonlist> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'We are here to help!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: const Color.fromARGB(255, 0, 46, 78),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Choose a method below to get in touch with us.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 13, 13, 13),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _makePhoneCall(
                    '+92486716994'); // Replace with your phone number
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 30.0),
                  backgroundColor: Colors.blue),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  Text(
                    '   Contact Us',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _makeEmail('info@moneyminder.com');
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 30.0),
                  backgroundColor: Color.fromRGBO(1, 121, 253, 1)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  Text(
                    '   info@moneyminder.com',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _makewhatsapp('+92486716994');
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 30.0),
                  backgroundColor: Colors.green),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white,
                  ),
                  Text(
                    '   WhatsApp',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneno) async {
    final Uri _url = Uri.parse('tel:$phoneno');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _makeEmail(String email) async {
    final Uri _url = Uri.parse('mailto:$email');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _makewhatsapp(String whatsapp) async {
    final Uri _url =
        Uri.parse('https://api.whatsapp.com/send?phone=$whatsapp&text= ');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
