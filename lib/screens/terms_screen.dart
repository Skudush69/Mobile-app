import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TERMS AND CONDITIONS'),
          titleSpacing: 00.0,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(87, 21, 204, 15),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(216, 22, 13, 191),
            fontSize: 25,
          ),
          toolbarHeight: 50,
        ),
        body: const SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 30),
            Text(
              '1. ACCEPTANCE OF TERMS.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'By accessing or using AHGCC, you agree to comply with and be bound by these terms and conditions.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '2. USER ELIGIBILITY.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'You must be 16 years or older to use this app. By using the app, you represent and warrant that you are at least 16 years old.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '3. USER CONDUCT.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              '3.1 Respectful Ineraction.',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'Users are expected to engage in respectful and considerate interaction. Any form of harassment, discrimination, or offensive behavior is strictly prohibited.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '3.2 Content Contribution.',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'Users may contribute content, such as comments, posts, or messages. By contributing, you grant AHGCC a non-exclusive, royalty-free, perpetual, and worldwide license to use, modify, and display the content.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '3.3 Compliance with Laws.',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'Users agree to comply with all applicable laws and regulations when using the app.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '4. PRIVACY.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              '4.1 Data Collection.',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'AHGCC collects and processes personal information in accordance with our Privacy Policy, which can be found [link to privacy policy].',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '4.2 Communication.',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'By using the app, you agree to receive communications from AHGCC, including but not limited to announcements, newsletters, and updates.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '5. INTELLECTUAL PROPERTY.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'All content and materials provided by AHGCC within the app are protected by intellectual property laws. Users may not reproduce, distribute, or modify any content without explicit permission.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '6. DISPUTE RESOLUTION.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'Any dispute arising from the use of AHGCC shall be resolved through mediation or arbitration in accordance with [applicable jurisdiction] laws..',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '7.LIMITATION OF LIABILITY.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'AHGCC is not liable for any indirect, incidental, or consequential damages arising out of the use or inability to use the app.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '8. TERMINATION.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'AHGCC reserves the right to terminate or suspend user accounts or access to the app at its sole discretion.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '9. MODIFICATIONS OF TERMS.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'AHGCC may modify these terms and conditions at any time. Users will be notified of changes, and continued use of the app constitutes acceptance of the modified terms.',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Text(
              '10. GOVERNING LAW.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 123, 10, 2)),
            ),
            Text(
              'These terms and conditions are governed by the laws of [applicable jurisdiction].',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(247, 13, 3, 86)),
            ),
          ]),
        ));
  }
}
