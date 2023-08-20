import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizapp_iti/Screens/category_screen.dart';
import 'package:quizapp_iti/Screens/opening_screen.dart';

class ScorScreen extends StatelessWidget {
  const ScorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    
         child: Column(
              children: [


                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              Center(
                child: Text(
                     "Hello ,Aalaa Your Scor Is 10/10",style: TextStyle(color: Colors.black
                     ,
                     fontFamily: 'Pacifico',
                     fontSize: 25),
                  
                        // MediaQuery.of(context).orientation==Orientation.landscape
                   
                  ),
              ),
              SizedBox(height: 100,),
     ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => CategoryScreen(),
                  ),
                );
              },
              child: Text("Reset Quiz",
              style: TextStyle(color: Colors.white
                     ,
                     fontFamily: 'Pacifico',
                     fontSize: 25),),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0), // Adjust the radius as needed
                  ),
                  backgroundColor: Colors.purple,
                  elevation: 10,
                  minimumSize: Size(180, 60)),
            ),
 SizedBox(height: 100,),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => OpeningScreen(),
                  ),
                );
              },
               child:Text("Play again ",
              style: TextStyle(color: Colors.white
                     ,
                     fontFamily: 'Pacifico',
                     fontSize: 25),),

              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0), // Adjust the radius as needed
                  ),
                  backgroundColor: Colors.purple,
                  elevation: 10,
                  minimumSize: Size(180, 60)),
            ),



       
      ]
      ),

      
    ));
  }
}