import 'package:flutter/material.dart';
import 'package:quizapp_iti/data/question_list.dart';

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
      
        // ignore: prefer_const_literals_to_create_immutables
        home:  login()

  
      

         );
  }}

