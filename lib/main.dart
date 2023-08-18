import 'package:flutter/material.dart';

import 'Screens/category_screen.dart';
import 'Screens/opening_screen.dart';
import 'Screens/login.dart';
import 'Screens/quizzscreen.dart';
import 'Screens/scor_screen.dart';

void main() {
  runApp(quizz());
}

class quizz extends StatelessWidget {
    
  const quizz();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        home:login(),

            // login(),
       
        
        

         );
  }}





    //      Scaffold(
    //   backgroundColor: Color.fromARGB(255, 2, 34, 88),
    //   body: Stack(
    //     children: [
    //       Center(
    //         child: Image(
    //           image: AssetImage('images/wall.jpeg'),
    //         ),
    //       ),
    //       Column(
    //         children: [
    //           SizedBox(
    //             height: 190,
    //           ),
    //           Image(
    //             image: AssetImage('images/qui1.png'),
    //             width: 200,
    //           ),

    //           SizedBox(
    //             height: 5,
    //           ),

    //           Container(
    //             //second child
    //             alignment: Alignment.center,
    //             child: Text(
    //               'ITI Quiz App',
    //               style: TextStyle(
    //                 color: Colors.yellow,
    //                 fontSize: 24,
    //                 fontFamily: 'Pacifico',
    //               ),
    //             ),
    //           ),

    //           SizedBox(
    //             height: 10,
    //           ),
    //           Container(
    //             //second child
    //             alignment: Alignment.center,
    //             child: Text(
    //               'We Are Creative enjoy our App',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 26,
    //                 fontFamily: 'Dancing Script',
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 250,
    //           ),

    //           Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(5),
    //               color: Colors.green,
    //             ),
    //             width: 350,
    //             height: 35,
    //             alignment: Alignment.center,
    //             child: Text(
    //               'Start',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 17,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // ));
 

