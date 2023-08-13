import 'package:flutter/material.dart';
import 'package:quizapp_iti/Screens/quizzscreen.dart';


class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    // super.key,
    required this.index,
  });

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [Colors.blue, Colors.red, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const QuizzScreen(),
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