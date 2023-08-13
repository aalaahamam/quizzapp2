import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizapp_iti/Screens/scor_screen.dart';

class QuizzScreen extends StatelessWidget {
  const  QuizzScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purple,
          title: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 8),
             Spacer(flex: 2,),
              Text('General Test',
              style: TextStyle(fontSize: 23,
              fontFamily:'Pacifico' ),
                            ),
             


               Padding(
                 padding: const EdgeInsets.only(left:50.0),
                 child: Image.asset(
                  'images/logo.png', // Replace with your logo image path
                  height: 42,
                  width: 90, // Adjust the height as needed
                             ),
               ),
          
            ],
            
            
          ),
          
    ),
    
  body: Container(child: Column(children: [
SizedBox(height: 50,),
  Container(
    
    child:  Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(
                          50.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 4, // Spread radius
                    offset: Offset(0, 2), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,left: 10),
                child: Text(
                  'Question1 :What is the capital of Afghanistan? ',
                  style: TextStyle(fontSize: 28
                  ,fontFamily: "Pacifico"),
                ),
              ),

              
            ),
    ),

      
    
  ),

   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            ElevatedButton(
              
                       onPressed: () {
                 Navigator.push(
                  context,
               MaterialPageRoute<void>(
                   builder: (BuildContext context){
                    return ScorScreen();
                   },
                  ),
                 );
              },
              child: Text('Kabul',style: TextStyle(
                fontSize: 19,
                fontFamily: "Pacifico"
              ),),

style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0),  ),
                   backgroundColor: Color.fromARGB(255, 176, 17, 197),
                 
                  elevation: 10,
                 minimumSize: Size(250, 50)),
              
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
               MaterialPageRoute<void>(
                   builder: (BuildContext context) => ScorScreen(),
                  ),
                 );
               
              },
              child: Text('Penh',style: TextStyle(
                fontSize: 19,
                fontFamily: "Pacifico"
              ),),

style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0),  ),
                   backgroundColor: Color.fromARGB(255, 176, 17, 197),
                 
                  elevation: 10,
                 minimumSize: Size(250, 50)),





            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
               MaterialPageRoute<void>(
                   builder: (BuildContext context) => ScorScreen(),
                  ),
                 );
              
              },
              child: Text('Male',style: TextStyle(
                fontSize: 19,
                fontFamily: "Pacifico"
              ),),
style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0),  ),
                   backgroundColor: Color.fromARGB(255, 176, 17, 197),
                 
                  elevation: 10,
                 minimumSize: Size(250, 50)),


            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
               MaterialPageRoute<void>(
                   builder: (BuildContext context) => ScorScreen(),
                  ),
                 );
              
              },
              child: Text('Muscat',style: TextStyle(
                fontSize: 19,
                fontFamily: "Pacifico"
              ),),



              style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0),  ),
                   backgroundColor: Color.fromARGB(255, 176, 17, 197),
                 
                  elevation: 10,
                 minimumSize: Size(250, 50)),
            ),

            



 

  ],),
  ]),
  ),

    );
  }
}