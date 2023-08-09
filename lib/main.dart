import 'package:flutter/material.dart';

void main() {
  runApp(quizz());
}

class quizz extends StatelessWidget {
  const quizz();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 2, 34, 88),
      body: Stack(

        children: [
          Center(
            
              child: Image(
            image: AssetImage('images/wall.jpeg'),
          ),
          ),

         Column(
           children: [
            SizedBox(height: 200,),
             Image(
            image: AssetImage('images/qui1.jpg'),),



            SizedBox(height: 30,),
             Container(  //second child
               alignment: Alignment.center,
               child: Text(
                 'ITI Quiz App',
                 style: TextStyle(color: Colors.yellow,
                 fontSize:24,
                  fontFamily: 'Pacifico',
                    
                     
                    ),
               ),

               
               ),
 SizedBox(height: 7,),
 Container(  //second child
               alignment: Alignment.center,
               child: Text(
                 'We Are Creative enjoy our App',
                 style: TextStyle(color: Colors.white,
                 fontSize:26,
                  fontFamily: 'Dancing Script',
                    
                     
                    ),
               ),
 ),
 SizedBox(height: 220,),

 Container(  
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
              ),
              width: 350,
              height: 35,

               alignment: Alignment.center,
               child: Text(
                 'Start',
                 style: TextStyle(color: Colors.white,
                 fontSize:17,
      
                    
                     
                    ),
               ),
 ),
 

           ],

         ),
           
          
         
        ],
      ),
    ));
  }
}




























// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
     
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
  
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
 
//         title: Text(widget.title),
//       ),
//       body: Center(
        
//         child: Column(
     
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//               const Text(
//               'Aalaa Ahmed Mansour Hamam',
//               style: TextStyle(
//                 color: Color.fromARGB(255, 26, 112, 182),
//                 fontSize: 20,
//               ),
//             ),
//             SizedBox(height: 20,),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), 
//     );
//   }
// }
