import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRIVACY POLICY'),
        titleSpacing: 0.0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(87, 21, 204, 15),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(216, 22, 13, 191),
          fontSize: 25,
        ),
        toolbarHeight: 50,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              '1. DATA COLLECTION AND USAGE.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'We collect and process personal information in accordance with this Privacy Policy.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '2. INFORMATION WE COLLECT.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              '2.1 Personal Information.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'We may collect personal information, including but not limited to names, email addresses, and contact details.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '2.2 Usage Data.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'We may collect information about how the app is accessed and used ("Usage Data"). This Usage Data may include information such as your device\'s Internet Protocol address (e.g., IP',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '3. DATA USAGE AND SHARING.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              '3.1 How We Use Data.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'We use collected data for various purposes, including app improvement, user communication, and providing relevant content.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '3.2 Third-Party Services.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'We may use third-party services that collect, monitor, and analyze data to improve our app\'s functionality.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '3.3 Data Sharing.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'We do not sell, trade, or otherwise transfer your personal information to outside parties unless we provide you with advance notice.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '4. USER RIGHTS.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              '4.1 Access and Correction.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'You have the right to access and correct your personal information held by us.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '4.2 Opt-Out.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'You can choose to opt-out of certain data collection and communications. However, this may affect your app experience.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '5. SECURITY MEASURES.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              '5.1 Data Security.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'We implement security measures to protect your personal information. However, no method of transmission over the internet is 100% secure.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '5.2 Third-Party Links.',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'Our app may contain links to third-party websites. We are not responsible for the privacy practices or content of these sites.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '6. UPDATES TO PRIVACY POLICY.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'This Privacy Policy is subject to change. Any updates will be posted on this page, and the effective date will be revised accordingly.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
            Text(
              '7. CONTACT US.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 123, 10, 2),
              ),
            ),
            Text(
              'If you have any questions regarding this Privacy Policy, you can contact us at [contact email/phone number].',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(247, 13, 3, 86),
              ),
            ),
          ],
        ),
      ),
    );
  }
}