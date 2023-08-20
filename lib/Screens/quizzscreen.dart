import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizapp_iti/Screens/scor_screen.dart';
import 'package:quizapp_iti/data/question_list.dart';

class QuizzScreen extends StatefulWidget {
  final categorymap;
  QuizzScreen({super.key,required this.categorymap});


// int index =0;
  @override
  State<QuizzScreen> createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: widget.categorymap['color'],
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
           widget.categorymap['Category'],
            style: TextStyle(fontSize: 25, fontFamily: ''),
          ),
          leading: Center(
              child: Text(
            "${index + 1}/${widget.categorymap['data'] as List}).length}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          )),
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10),
              child: Icon(Icons.access_alarm_rounded),
            )
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(widget.categorymap['data'][index]['question'],
                      style: TextStyle(
                        fontSize: 25,
                      )
                      //  color: Col GoogleFonts.amaranth(ors.red, fontSize: 25),
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                for (int i = 0;
                    i < (widget.categorymap['data'][index]['answer'] as List).length;
                    i++)
                  // for (int i = 0; i < 4; i++)
                  ElevatedButton(
                    onPressed: () {
                      if (index + 1 < (widget.categorymap['data'] as List).length) {
                        setState(() {
                          index++;
                        });
                      } else {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const ScorScreen(),
                          ),
                        );
                      }
                    },
                    child: Text(
                     widget.categorymap['data'][index]['answer'][i]['ans'],
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        backgroundColor: Color.fromARGB(255, 176, 17, 197),
                        elevation: 10,
                        minimumSize: Size(280, 40)),
                  ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ));
  }
}





































//         appBar: AppBar(
//           backgroundColor: Colors.purple,
//           title: Row(
//             //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // Icon(Icons.arrow_back),
//               SizedBox(width: 8),
//               Spacer(
//                 flex: 2,
//               ),
//               Text(
//                 dataBase[1]["Category"],
//                 style: TextStyle(fontSize: 23, fontFamily: 'Pacifico'),
//               ),

//               Padding(
//                 padding: const EdgeInsets.only(left: 50.0),
//                 child: Image.asset(
//                   'images/logo.png', // Replace with your logo image path
//                   height: 42,
//                   width: 90, // Adjust the height as needed
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: Container(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 child: Padding(
//                   padding: const EdgeInsets.all(7.0),
//                   child: Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 130,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50.0),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.2), // Shadow color
//                           blurRadius: 4, // Spread radius
//                           offset: Offset(0, 2), // Shadow position
//                         ),
//                       ],
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 20.0, left: 10),
//                       child: Text(
//                         dataBase[1]["data"][0]["question"],
//                         style: TextStyle(fontSize: 28, fontFamily: "Pacifico"),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               // Column(
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   children: [
//               //     SizedBox(
//               //       height: 50,
//               //     ),

//               for (int i = 0;
//                   i < (dataBase[1]['data'][i]['answer'] as List).length;
//                   i++)
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: dataBase[1]['color'],
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                       elevation: 10,
//                       minimumSize: Size(250, 50)),
//                   onPressed: () {
//                                    //  if(index +1< )

//                     // setState(() {
//                     //   // index++;
//                     // });

//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute<void>(
//                     //     builder: (BuildContext context) {
//                     //       return ScorScreen();
//                   },
//                   child: Text(
//                     dataBase[1]["data"][0]["answer"][i]['ans'],
//                     style: TextStyle(fontSize: 19, fontFamily: "Pacifico"),
//                   ),
//                 ),

//               // SizedBox(
//               //   height: 50,
//               // ),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     Navigator.push(
//               //       context,
//               //       MaterialPageRoute<void>(
//               //         builder: (BuildContext context) => ScorScreen(),
//               //       ),
//               //     );
//               //   },
//               //   child: Text(
//               //     'Penh',
//               //     style: TextStyle(fontSize: 19, fontFamily: "Pacifico"),
//               //   ),
//               //   style: ElevatedButton.styleFrom(
//               //       shape: RoundedRectangleBorder(
//               //         borderRadius: BorderRadius.circular(25.0),
//               //       ),
//               //       backgroundColor: Color.fromARGB(255, 176, 17, 197),
//               //       elevation: 10,
//               //       minimumSize: Size(250, 50)),
//               // ),
//               // SizedBox(
//               //   height: 50,
//               // ),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     Navigator.push(
//               //       context,
//               //       MaterialPageRoute<void>(
//               //         builder: (BuildContext context) => ScorScreen(),
//               //       ),
//               //     );
//               //   },
//               //   child: Text(
//               //     'Male',
//               //     style: TextStyle(fontSize: 19, fontFamily: "Pacifico"),
//               //   ),
//               //   style: ElevatedButton.styleFrom(
//               //       shape: RoundedRectangleBorder(
//               //         borderRadius: BorderRadius.circular(25.0),
//               //       ),
//               //       backgroundColor: Color.fromARGB(255, 176, 17, 197),
//               //       elevation: 10,
//               //       minimumSize: Size(250, 50)),
//               // ),
//               // SizedBox(
//               //   height: 50,
//               // ),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     Navigator.push(
//               //       context,
//               //       MaterialPageRoute<void>(
//               //         builder: (BuildContext context) => ScorScreen(),
//               //       ),
//               //     );
//               //   },
//               //   child: Text(
//               //     'Muscat',
//               //     style: TextStyle(fontSize: 19, fontFamily: "Pacifico"),
//               //   ),
//               //   style: ElevatedButton.styleFrom(
//               //       shape: RoundedRectangleBorder(
//               //         borderRadius: BorderRadius.circular(25.0),
//               //       ),
//               //       backgroundColor: Color.fromARGB(255, 176, 17, 197),
//               //       elevation: 10,
//               //       minimumSize: Size(250, 50)),
//               // ),
//             ],
//           ),
//         ));
//     ;
//   }
// }
