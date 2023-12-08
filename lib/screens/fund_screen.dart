import 'package:app/screens/pay_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Fund extends StatefulWidget {
  const Fund({super.key});

  @override
  State<Fund> createState() => _FundState();
}

class _FundState extends State<Fund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AHGCC FUNDING'),
        titleSpacing: 00.0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(87, 21, 204, 15),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(216, 22, 13, 191),
          fontSize: 25,
        ),
        toolbarHeight: 50,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40,),
            CardWidget(
              title: 'HARAMBEE',
              description:
                  'Your presence and potential contribution play a pivotal role in fostering a collective spirit that transcends individual efforts. Your support will leave an enduring impact on the lives of those we aim to uplift. We thank you for your generosity.',
              icon: Icons.group,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const Pay()));
              },
            ),
            const SizedBox(height: 40,),
            CardWidget(
              title: "CHILDREN'S HOME",
              description:
                  'By contributing you provide essential resources that nurture the well-being, education, and overall development of these children. Each contribution echoes with the potential to create lasting positive change. Join us in making a difference and sowing the seeds of hope.',
              icon: Icons.child_care,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const Pay()));
              },
            ),
            const SizedBox(height: 40,),
            DefaultTextStyle(
          style: const TextStyle(
              fontSize: 20, color: Color.fromARGB(247, 13, 3, 86)),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('THANK YOU FOR YOUR CONTRIBUTION'),
            ],
            isRepeatingAnimation: false,
            onTap: () {},
          ),
        ),
          // const Text('THANK YOU FOR YOUR CONTRIBUTION',style: TextStyle(fontSize: 20,color: Color.fromARGB(216, 22, 13, 191)),),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  CardWidget({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: Text(description),
              leading: Icon(icon, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
