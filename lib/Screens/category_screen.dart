import 'package:flutter/material.dart';
import 'package:quizapp_iti/Screens/quizzscreen.dart';
import 'package:quizapp_iti/widgets/cont.dart';


class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key ?key}) : super(key: key);

  Future<bool> _onBackPressed(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Exit App"),
        content: Text("Are you sure you want to exit the app?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text("No"),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackPressed(context),
      child: Scaffold(
        body: Column(
          children: [
            for (int i = 0; i < 6; i++)
              CategoryContainer(
                index: i,
              )
          ],
        ),
      ),
    );
  }
}