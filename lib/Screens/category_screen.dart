import 'package:flutter/material.dart';
import 'package:quizapp_iti/Screens/quizzscreen.dart';
import 'package:quizapp_iti/widgets/cont.dart';


class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key ?key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> with TickerProviderStateMixin {
      late AnimationController  _slideLogocontrol;
      late AnimationController  _fadeTextcontroller;
      
 @override
  void initState(){

super.initState();

_slideLogocontrol=AnimationController(vsync: this,duration: Duration(milliseconds:1500 ));

_slideLogocontrol.forward();


  }

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
        body: SlideTransition(
                          position: Tween<Offset>(begin:Offset(0, -1),end: Offset(0,0) ).animate(_slideLogocontrol),

          child: Column(
            children: [
              for (int i = 0; i < 6; i++)
                CategoryContainer(
                  index: i,
                )
            ],
          ),
        ),
      ),
    );
  }
}