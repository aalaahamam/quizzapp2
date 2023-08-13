
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
 import 'package:quizapp_iti/Screens/category_screen.dart';

class login extends StatelessWidget {
  
  const login({super.key}
    
  );

  @override
  Widget build(BuildContext context) {
    bool rememberMe = true;
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/green.png',
              fit: BoxFit.cover,
            )),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Image(image: AssetImage('images/tiny_poo.png'))
          ],
        ),
        Container(
            width: double.infinity,
            height: 480,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: Color.fromARGB(255, 221, 216, 216)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    width: 340,
                    height: 55,
                    child: Row(
                      children: [
                  

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),

                        // Spacer(
                        //   flex: 1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                                          'username',
                                          style: TextStyle(fontSize: 18,
                                          color: Colors.grey),
                                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  width: 340,
                  height: 55,
                  child: Row(
                    children: [
                      // Spacer(flex: 1,),

                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.lock,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                     
 Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                                          'password',
                                          style: TextStyle(fontSize: 18,
                                          color: Colors.grey),
                                        ),
                        ),
Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Icon(
                          Icons.remove_red_eye_sharp,
                          size: 25,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, left: 180, bottom: 20,right: 5),
                  child: Row(
                    children: [
                      Text(
                        "New to quizz app?  ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                   
                       Padding(
                         padding: const EdgeInsets.only(left:2),
                         child: Text(
                                         'Register',
                                         style: TextStyle(fontSize: 16,color: Colors.green),
                                       ),
                       ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
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
                          "Login",
                          style: TextStyle(),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation:
                              8, // Adjust the elevation value to control the shadow intensity
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20.0), // Customize the border radius as needed
                          ),
                        ),
                      ),
                    ),

            Image.asset("images/pas1.png",
            width: 200,
            height: 90,),
            
                  ],
                 
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:13.0),
                  child: Text("Use Touch ID",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20
                  ),),
                ),

Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(flex: 1,),
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      // Update the rememberMe variable
                      rememberMe = value!;
                    },
                  ),
                  Text('Remember Me'),
                  Spacer(flex: 2,),
 
 Text(
                  'forget Password ?',
                  style: TextStyle(fontSize: 15,
                  color: Colors.green),
                ),
                  Spacer(flex: 1,)
                ],
              ),



              ],
            )),
      ],
    ));
  }
}












































// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:quizapp_iti/Screens/category_screen.dart';

// class login extends StatelessWidget {
  
//   const login({super.key}
    
//   );

//   @override
//   Widget build(BuildContext context) {
//     bool rememberMe = true;
//     return Scaffold(

//         body: Stack(
//       alignment: Alignment.bottomCenter,
//       children: [

//  Align(
//           alignment: Alignment.topCenter,
//           child: Container(
//             height: MediaQuery.of(context).size.height * 0.4
//             ,
//             width: MediaQuery.of(context).size.width,
//             color: const Color.fromARGB(255, 27, 154, 31),
//             child: Center(
//               child: Image.asset(
//                 "images/tiny_poo.png",
//                 height:200,
//               ),
//             ),
//           ),
//         ),

//         Container(
//           padding: EdgeInsets.all(20),
//             width: double.infinity,
//             height: MediaQuery.of(context).size.height*2/3,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(30)
//                 ),
//                 color: Color.fromARGB(255, 221, 216, 216)),

//             child: Column(
//               children: [
//                 Text(
//                   "Login",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                   SizedBox(
//               height: 16,
//             ),

//                 TextField(
//               decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.person),
//                 hintText: "User name",
//                 // errorBorder: ,
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                       color: Color.fromARGB(255, 36, 4, 240), width: 2),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 // border: ,
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 // border:
//               ),
//             ),
//               SizedBox(
//               height: 12,
//             ),


//  TextField(
//               decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.lock),
//                 suffixIcon: Icon(Icons.visibility),
//                 hintText: "Password",
//                 // errorBorder: ,
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                       color: Color.fromARGB(255, 36, 4, 240), width: 2),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 // border: ,
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 // border:
//               ),
//             ),

//             SizedBox(
//               height: 8,
//             ),
                     
//                     ],
//                   ),
//                 ),
//                   Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Text("New to quiz app?"),
//                 // SizedBox(
//                 //   width: 4,
//                 // ),
//                 InkWell(
//                   onTap: () {
//                     print("Hello we are ITI");
//                   },
//                   child: Text(
//                     "Register",
//                     style: TextStyle(
//                         color: Colors.green, fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),

//             //    SizedBox(
//             //   height: 30,
//             // ),
               
//                      ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (BuildContext context) => CategoryScreen(),
//                   ),
//                 );
//               },
//               child: Text("Login"),
//               style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(
//                         25.0), // Adjust the radius as needed
//                   ),
//                   backgroundColor: Colors.green,
//                   elevation: 10,
//                   minimumSize: Size(130, 40)),
//             ),
//             // SizedBox(
//             //   height: 15,
//             // ),

//                Icon(
//               Icons.fingerprint,
//               color: Colors.blue,
//               size: 50,
//             ),

//                Text(
//               "Touch ID",
//               style: TextStyle(color: Colors.grey),
//             ),

//             Spacer(),

    

//  Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               // crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Row(
//                   children: [
//                     Checkbox(value: true, onChanged: (value) {}),
//                     Text("Remember me"),
//                   ],
//                 ),

//    InkWell(
//                   onTap: () {
//                     print("Hello we are ITI");
//                   },
//                   child: Text(
//                     "Forget password",
//                     style: TextStyle(
//                         color: Colors.green, fontWeight: FontWeight.bold),
//                   ),
//                 ),
                
 

//                 ],
//               ),



    
//   ],));
      
// }
// }
