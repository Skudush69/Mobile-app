import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
 @override
 Widget build(BuildContext context){
   return  Scaffold(
     appBar: AppBar(
       title: const Text('BEACON UNIVERSITY'),
       titleSpacing: 00.0,
       centerTitle: true,
       surfaceTintColor: Colors.blueGrey,
       backgroundColor: const Color.fromARGB(255, 133, 2, 2),
       titleTextStyle: const TextStyle (color: Colors.white,
       fontSize: 15,
       ),
       
        toolbarHeight: 50,
       ),
        backgroundColor: const Color.fromARGB(255, 199, 225, 237),
        
   body: Padding(
     padding: const EdgeInsets.all(70.0),
     child: const  Column( 
      children: [
        Padding( padding: EdgeInsets.fromLTRB(20, 15, 0, 15),),
        Row(children: [Icon(Icons.person_2),
        
         SizedBox(width: 200, height: 50,
       child:  TextField(decoration: 
        InputDecoration(
          
          hintText: 'Enter your username:',
          hintStyle:  TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix),
          contentPadding:  EdgeInsets.all(5), 
           border: OutlineInputBorder( 
          // borderRadius: BorderRadius.circular(400.0),
           borderSide:  BorderSide (width: 1)
           
           )
        ),
        maxLength: 10,
        minLines:1,
        textAlign: TextAlign.center,
        ),
       ),
        ],
        ), 
       Row(children: [Icon(Icons.https),
       SizedBox( width: 200, height: 30,
      child:  TextField(decoration: InputDecoration(
        hintText: 'Enter your password',
         hintStyle:  TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix),
          contentPadding:  EdgeInsets.all(5), 
           border: OutlineInputBorder( 
          // borderRadius: BorderRadius.circular(400.0),
           borderSide:  BorderSide (width: 1)
      ),
      ),
      textAlign: TextAlign.center,
      
       ),
       ),
       ],
       ),
       SizedBox(height: 25),

       Padding(padding: const EdgeInsetsDirectional.symmetric(horizontal: 300),
       child: MaterialButton(minWidth: double.infinity,
       onPressed: null,
       child: Text('Login'),
       color: Colors.redAccent,
       textColor: Colors.black,
       ),
       ),
       
      ],
     ),
   ),
  );

 }
}




// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget{
//  @override
//  Widget build(BuildContext context){
//    return  Scaffold(
//      appBar: AppBar(
//        title: const Text('Brooklyn University'),
//        titleSpacing: 00.0,
//        surfaceTintColor: Color.fromARGB(255, 55, 205, 211),
//        backgroundColor: Color.fromARGB(255, 149, 41, 41),
//        titleTextStyle: const TextStyle (color: Colors.white,
//        fontSize: 15,
//        ),
       
//         toolbarHeight: 60,
//        ),
//         backgroundColor: Colors.white,
        
//    body: const Column(
//     children: [
//        SizedBox(width: 200,height: 30,
//       child: TextField(
//         decoration: InputDecoration( 
//         hintText: 'Enter your username:',
//         hintStyle: TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix),
//         contentPadding: EdgeInsets.all(5), 
//          border: OutlineInputBorder(
//         // borderRadius: BorderRadius.circular(400.0),
//          borderSide: BorderSide (width: 2)
         
//          )
//       ),
//       textAlign: TextAlign.center,
      
//       ),
//      ),
//     ],
//    ),
//   );

//  }
// }
