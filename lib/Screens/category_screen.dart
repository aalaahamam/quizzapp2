import 'package:flutter/material.dart';
import 'package:quizapp_iti/Screens/quizzscreen.dart';
import 'package:quizapp_iti/widgets/cont.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 6; i++)
            CategoryContainer(
              index: i,
            )

        
        ],
      ),
    );
  }
}

