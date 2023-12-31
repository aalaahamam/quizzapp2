import 'package:flutter/material.dart';
import 'package:quizapp_iti/Screens/quizzscreen.dart';
import 'package:quizapp_iti/data/question_list.dart';


class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    // super.key,
    required this.index,
  });

  List quizName = ["Sport Test", "Sciense Test", "General Test","History Test","Art Test","math Test"];
  List quizColor = [Colors.purple, Colors.yellow, Colors.green ,Colors.pink,Colors.orange,Colors.brown];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>( 
              ///نبعت برامتر 
              builder: (BuildContext context) =>
               QuizzScreen(categorymap: dataBase[index],),
               
              
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style:TextStyle(
                  fontSize: 35, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}

