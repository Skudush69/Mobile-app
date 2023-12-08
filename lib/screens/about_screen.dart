import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ABOUT US'),
          titleSpacing: 00.0,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(87, 21, 204, 15),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(216, 22, 13, 191),
            fontSize: 25,
          ),
          toolbarHeight: 50,
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Center(
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 25.5, color: Color.fromARGB(247, 13, 3, 86)),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('WELCOME TO AHGCC'),
                      ],
                      isRepeatingAnimation: false,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      'At African Holy Ghost Christian Church, we are a vibrant and welcoming community of believers dedicated to fostering spiritual growth, community engagement, and unwavering faith. Rooted in a rich history and guided by passionate leaders, our church is a beacon of love, compassion, and spiritual enlightenment.'),
                  const SizedBox(
                    height: 20,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 25.5, color: Color.fromARGB(247, 13, 3, 86)),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('OUR HISTORY'),
                      ],
                      isRepeatingAnimation: false,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      'African Holy Ghost Christian Church was founded with a vision to create a sacred space where individuals could come together to worship, find solace, and strengthen their relationship with God. Established in 1974, our church has since been on a transformative journey, evolving into a dynamic and inclusive community.Throughout the years, weve witnessed the grace of God manifest in countless ways, guiding our congregation through both triumphs and challenges. Our history is a testament to the unwavering faith of our members and the divine providence that has shaped our spiritual identity.'),
                  const SizedBox(
                    height: 20,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 25.5, color: Color.fromARGB(247, 13, 3, 86)),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('CHURCH LEADERSHIP'),
                      ],
                      isRepeatingAnimation: false,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      'Our leadership team is comprised of devoted individuals called to serve and shepherd the flock of African Holy Ghost Christian Church.our leaders are committed to creating an environment where everyone can experience the transformative power of Gods love.As we continue to grow and embrace the future, our leadership remains steadfast in its commitment to fostering a community that reflects the love of Christ. We invite you to join us on this spiritual journey, where together, we seek to deepen our faith, impact our community, and glorify the name of the Holy Spirit.'),
                  const SizedBox(
                    height: 20,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 25.5, color: Color.fromARGB(247, 13, 3, 86)),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('JOIN US'),
                      ],
                      isRepeatingAnimation: false,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      'Whether you are new to faith or seeking a spiritual home, African Holy Ghost Christian Church opens its doors to you. Come, experience the warmth of our fellowship, the power of worship, and the transformative love of God. We look forward to welcoming you into our community and sharing in the joy of our Christian journey.'),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 100.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Agne',
                        color: Color.fromARGB(255, 123, 10, 2),
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('PRAISE'),
                          TypewriterAnimatedText('WORSHIP'),
                          TypewriterAnimatedText('PRAY'),
                        ],
                        isRepeatingAnimation: true,
                        onTap: () {},
                      ),
                    ),
                  ),
                ]),
              ),
            ])));
  }
}
