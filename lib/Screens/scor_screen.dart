import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizapp_iti/Screens/category_screen.dart';
import 'package:quizapp_iti/Screens/opening_screen.dart';
import 'package:quizapp_iti/data/question_list.dart';

class ScorScreen extends StatefulWidget {
  final int TotalScore;
  final int totalNumOfquestion;
  const ScorScreen(
      {super.key, required this.TotalScore, required this.totalNumOfquestion});

  @override
  State<ScorScreen> createState() => _ScorScreenState();
}

class _ScorScreenState extends State<ScorScreen> 


with TickerProviderStateMixin {
      late AnimationController  _slideLogocontrol;
      late AnimationController  _fadeTextcontroller;
      
 @override
  void initState(){

super.initState();

_slideLogocontrol=AnimationController(vsync: this,duration: Duration(milliseconds:1500 ));
_fadeTextcontroller=AnimationController(vsync: this,duration: Duration(seconds: 2));

_slideLogocontrol.forward();
_fadeTextcontroller.forward();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _fadeTextcontroller,
              child: RichText(
                  text: TextSpan(
                      text: "Congrate ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontFamily: 'Pacifico'),
                      children: [
                    TextSpan(
                        //////////////// اسم مركب
                        text: '${usernameControl.text} \n ',
                        ///////////////
                        style: TextStyle(color: Colors.purple, fontSize: 25)),
                    TextSpan(text: "your score is "),
                    TextSpan(
                        text: "${widget.TotalScore}/${widget.totalNumOfquestion}",
                        style: TextStyle(color: Colors.purple, fontSize: 25)),
                  ])),
            ),
            SizedBox(
              height: 100,
            ),
            FadeTransition(
              opacity: _fadeTextcontroller,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => CategoryScreen(),
                    ),
                  );
                },
                child: Text(
                  "Reset Quiz",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Pacifico', fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          25.0), // Adjust the radius as needed
                    ),
                    backgroundColor: Colors.purple,
                    elevation: 10,
                    minimumSize: Size(180, 60)),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            FadeTransition(
              opacity: _fadeTextcontroller,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => OpeningScreen(),
                    ),
                  );
                },
                child: Text(
                  "Play again ",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Pacifico', fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          25.0), // Adjust the radius as needed
                    ),
                    backgroundColor: Colors.purple,
                    elevation: 10,
                    minimumSize: Size(180, 60)),
              ),
            ),
          ]),
    ));
  }
}
