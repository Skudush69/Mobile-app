// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

// class Pay extends StatefulWidget {
//   const Pay({super.key});

//   @override
//   State<Pay> createState() => _PayState();
// }

// class _PayState extends State<Pay> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
//         title: const Text('AHGCC PAYBILL'),
//         titleSpacing: 00.0,
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(87, 21, 204, 15),
//         titleTextStyle: const TextStyle(
//           color: Color.fromARGB(216, 22, 13, 191),
//           fontSize: 25,
//         ),
//         toolbarHeight: 50,
//       ),
//       body: const Center(
//         child: Column(
//           children: [
//             SizedBox(height: 50,),
//             Text('Go to M-PESA Menu',style: TextStyle(fontSize: 20,color: Color.fromARGB(247, 13, 3, 86)),),
//             Text('Select Lipa na M-PESA',style: TextStyle(fontSize: 20,color: Color.fromARGB(247, 13, 3, 86)),),
//             Text('Go to Paybill',style: TextStyle(fontSize: 20,color: Color.fromARGB(247, 13, 3, 86)),),
//             Text('Enter Business Number:986521',style: TextStyle(fontSize: 20,color: Color.fromARGB(247, 13, 3, 86)),),
//             Text('Enter Account Number as shown below',style: TextStyle(fontSize: 20,color: Color.fromARGB(247, 13, 3, 86)),),
//                 SizedBox(
//   width: 100.0,
//   child: DefaultTextStyle(
//     style: const TextStyle(
//       fontSize: 20.0,
//       fontFamily: 'Agne',
//       color: Color.fromARGB(255, 123, 10, 2),
//     ),
//     child: AnimatedTextKit(
//       animatedTexts: [
//         TypewriterAnimatedText('PRAISE'),
//         TypewriterAnimatedText('WORSHIP'),
//         TypewriterAnimatedText('PRAY'),
//       ],
//       isRepeatingAnimation: true,
//       onTap: () {},
//     ),
//   ),
// ),

//             // Text('eg.Aaron-Offering',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 4, 155, 12)),),
//             // Text('Pamela-Tithe',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 4, 155, 12)),),
//             // Text('Chris-Harambee',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 4, 155, 12)),),
//             // Text('Ryan-Childrens Home',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 4, 155, 12)),),
//             SizedBox(height: 15,),
//             Text('Enter amount',style: TextStyle(fontSize: 20,color: Color.fromARGB(247, 13, 3, 86)),),
//             Text('Enter your M-PESA PIN',style: TextStyle(fontSize: 20,color: Color.fromARGB(247, 13, 3, 86)),),
//             SizedBox(height: 50,),
//             Text('*wait for a confirmation message*',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 123, 10, 2),),),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AHGCC PAYBILL'),
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
          children: [
            const SizedBox(height: 50),
            const Text(
              'Go to M-PESA Menu',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            const Text(
              'Select Lipa na M-PESA',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            const Text(
              'Go to Paybill',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            const Text(
              'Enter Business Number:986521',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            const Text(
              'Enter Account Number as shown below',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(247, 13, 3, 86)),
            ),
            Container(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Agne',
                  color: Color.fromARGB(255, 4, 155, 12),
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Aaron-Offering'),
                    TypewriterAnimatedText('Pamela-Tithe'),
                    TypewriterAnimatedText('Chris-Harambee'),
                    TypewriterAnimatedText('Ryan-Childrens Home'),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {},
                ),
              ),
            ),
            const Text('Enter amount', style: TextStyle(fontSize: 20, color: Color.fromARGB(247, 13, 3, 86))),
            const Text('Enter your M-PESA PIN', style: TextStyle(fontSize: 20, color: Color.fromARGB(247, 13, 3, 86))),
            const SizedBox(height: 70),
             DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 123, 10, 2)),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('wait for a confirmation message shorlty'),
                      ],
                      isRepeatingAnimation: true,
                      onTap: () {},
                    ),
                  ),
            // Text(
            //   '*wait for a confirmation message*',
            //   style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 123, 10, 2)),
            // ),
          ],
        ),
      ),
    );
  }
}
