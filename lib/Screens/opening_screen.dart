import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quizapp_iti/Screens/login.dart';

class OpeningScreen extends StatefulWidget {
   OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen>
    with TickerProviderStateMixin {
      late AnimationController  _slideLogocontrol;
      late AnimationController  _fadeTextcontroller;
      
 @override
  void initState(){

super.initState();

_slideLogocontrol=AnimationController(vsync: this,duration: Duration(milliseconds:1500 ));
_fadeTextcontroller=AnimationController(vsync: this,duration: Duration(seconds: 3));

_slideLogocontrol.forward();
_fadeTextcontroller.forward();

  }
    


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/wall.jpeg'),
                  fit: BoxFit.cover //// الصوره تملي الصفحه
                  ),
            ),
            child: Column(
              children: [
                //frist

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),


                
                SlideTransition(
                  position: Tween<Offset>(begin:Offset(0, -2),end: Offset(0,0) ).animate(_slideLogocontrol),
                  child: Image(
                    image: AssetImage('images/qui1.png'),
                    height:
                        // MediaQuery.of(context).orientation==Orientation.landscape
                        MediaQuery.of(context).size.height * 0.3,
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                //second
                FadeTransition(
                  opacity: _fadeTextcontroller,
                  child: Column(
                    children: [
                      Text(
                        'ITI Quiz App',
                        style:
                            // googlefonts.pac
                
                            TextStyle(
                          color: Colors.yellow,
                          fontSize: 28,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      Text(
                        'We Are Creative enjoy our App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'Dancing Script',
                        ),
                      ),
                    ],
                  ),
                ),

                Spacer(),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: Container(
                    // padding: EdgeInsets.all(8),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => login(),
                              ));
                        },
                        child: Text(
                          "Start",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ),
              ],
            )));
  }
}
