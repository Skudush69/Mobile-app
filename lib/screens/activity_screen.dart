import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACTIVITIES'),
        titleSpacing: 00.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(87, 21, 204, 15),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(216, 22, 13, 191),
          fontSize: 25,
        ),
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30,
              ),
              buildClickableActivityCard(
                'SEMINARS',
                ['Youth - ${_formatDate(DateTime(2024, 4, 10))}', 'Couples - ${_formatDate(DateTime(2024, 4, 15))}'],
                'They serve as an enriching and educational gathering where members come together to deepen their spiritual understanding, engage in meaningful discussions, and explore relevant topics that contribute to their personal and collective growth in faith.',
              ),
              SizedBox(height: 18),
              buildClickableActivityCard(
                'RETREATS',
                [
                  'Youth - ${_formatDate(DateTime(2024, 8, 5))}',
                  'Highschoolers - ${_formatDate(DateTime(2024, 1, 5))}',
                  'Children - ${_formatDate(DateTime(2024, 4, 20))}',
                ],
                'They provide a sacred space for members to temporarily withdraw from their routine, fostering spiritual renewal and community bonding and have fun with the recreational facilities provided.',
              ),
              SizedBox(height: 18),
              buildClickableActivityCard(
                'CRUSADE',
                [],
                'It is an evangelistic event that involves fervent preaching, worship, and outreach efforts aimed at spreading the Christian faith to a wider audience.Characterized by passionate sermons, communal prayer, and a call to personal salvation, church crusades seek to inspire a spiritual awakening and encourage individuals to embrace Christianity while fostering a sense of community and unity.',
              ),
              SizedBox(height: 18),
              buildClickableActivityCard(
                'ASA MISSION',
                [],
                'It involve members actively participating in outreach and service initiatives to fulfill the mission of spreading compassion, sharing the Gospel.It also provides a platform for personal and spiritual growth while instilling a lifelong commitment to serving others.',
              ),
              SizedBox(height: 18),
              buildClickableActivityCard(
                'AYC CONFERENCE',
                [],
                'It serve as pivotal gatherings that bring together members for a focused period of learning, inspiration, and fellowship.It also creates a space for believers to deepen their understanding of their faith, build connections with fellow attendees, and equip themselves with insights and tools to navigate contemporary challenges while fostering a sense of unity and shared purpose. ',
              ),
              SizedBox(height: 18),
              buildClickableActivityCard(
                'CEREMONIES',
                ['Weddings - ${_formatDate(DateTime(2024, 3, 1))}', 'Pre-weddings - ${_formatDate(DateTime(2024, 3, 5))}'],
                'Surrounded by family and friends, they often incorporates prayers, hymns, and scripture readings, creating a spiritually significant and memorable event.',
              ),
              SizedBox(height: 18),
              buildClickableActivityCard(
                'FELLOWSHIPS',
                ['Youth - ${_formatDate(DateTime(2023, 12, 13))}', 'Indoor - ${_formatDate(DateTime(2023, 12, 16))}'],
                'They foster spiritual bonding, support, and mutual encouragement among believers, often centered around shared activities, discussions, and a sense of community.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildClickableActivityCard(
    String title,
    List<String> options,
    String details,
  ) {
    return GestureDetector(
      onTap: () {
        _showDetailsDialog(title, details, options);
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              if (options.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: options
                      .map((option) => Text(option))
                      .toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDetailsDialog(String title, String details, List<String> options) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(details),
              if (options.isNotEmpty)
                ...options
                    .map((option) => Text(option))
                    .toList(),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back'),
            ),
          ],
        );
      },
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}

void main() {
  runApp(MaterialApp(
    home: Activity(),
  ));
}
