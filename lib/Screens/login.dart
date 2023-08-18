import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizapp_iti/Screens/category_screen.dart';

class login extends StatelessWidget {
  
 login({super.key}
 
  

    
  );
  final _formkey=GlobalKey<FormState>();
  RegExp pass_vaild =RegExp("r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{911,}");
  bool validatepass(String pass){
    String _password =pass.trim();

    if(pass_vaild.hasMatch(_password)){
      return true;
    }else {
      return false;
    }


  }

  @override
  Widget build(BuildContext context) {
    bool rememberMe = true;
    return Scaffold(

        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [

 Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3
            ,
            width: MediaQuery.of(context).size.width,
            color: Colors.purple,
            child: Center(
              child: Image.asset(
                "images/tiny_poo.png",
                height:180,
              ),
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.all(20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height*2.2/3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                top: Radius.circular(30)
                ),
                color: Color.fromARGB(255, 240, 233, 233)),



            child: Form(
              key:_formkey ,
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Pacifico',
                  
                    ),
                  ),
                    SizedBox(
                height: 20,
              ),
            
            
            
                  TextFormField(
                    validator:(value){
                      if(value!.isEmpty){
                        return" username should not be empty";
                      }else if(value.length<8){
                        return "username must be greater than 8";   
                        }
                
                    },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "User name",
                  // errorBorder: ,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.purple, width: 5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // border:
                ),
              ),
                SizedBox(
                height: 10,
              ),
            
            
             TextFormField(

                validator:(value){
                      if(value!.isEmpty){
                        return" password should not be empty";
                      }else{
                        //call function to check password
                        bool ressult=validatepass(value);
                        if(ressult){
                               return null;
                        }else{
                                    return"Password should contain capital,small letter &number &special";
                        }
                      }
                    },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Password",
                  // errorBorder: ,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.purple, width: 5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // border:
                ),
              ),
                SizedBox(
                height: 10,
              ),
            
            
             TextFormField(
                validator:(value){
                      if(value!.isEmpty){
                        return" email should not be empty";
                      }else if(!value.contains("@")){
                        return "invalid email should contain @";
                      }else if(!value.contains(".")){
                        return "invalid email should contain .";
                      }else if(!value.contains("com")){
                        return "invalid email should contain com";
                      }
                    },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  // suffixIcon: Icon(Icons.ema),
                  hintText: "Email",
                  // errorBorder: ,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.purple, width: 2),
                    borderRadius: BorderRadius.circular(325),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // border:
                ),
              ),
            
              SizedBox(
                height: 1,
              ),
                       
                      ],
                    ),
            ),
                ),
            //       Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // Text("New to quiz app?"),
            //     // SizedBox(
            //     //   width: 4,
            //     // ),
            //     // InkWell(
            //     //   onTap: () {
            //     //     print("Hello we are ITI");
            //     //   },
            //     //   child: Text(
            //     //     "Register",
            //     //     style: TextStyle(
            //     //         color: Colors.green, fontWeight: FontWeight.bold),
            //     //   ),
            //     // )
            //   ],
            // ),
               SizedBox(
              height: 5,
            ),
               
                     ElevatedButton(
              onPressed: () {
///// validation
                if(_formkey.currentState!.validate())
////////
                Navigator.push(

                 

                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => CategoryScreen(),
                  ),
                );
              },
              
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0), // Adjust the radius as needed
                  ),
                  backgroundColor: Colors.purple,
                  elevation: 10,
                  minimumSize: Size(130, 40)),
            ),
            // SizedBox(
            //   height: 15,
            // ),

            //    Icon(
            //   Icons.fingerprint,
            //   color: Colors.blue,
            //   size: 50,
            // ),

            //    Text(
            //   "Touch ID",
            //   style: TextStyle(color: Colors.grey),
            // ),

            // Spacer(),

    

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



    
  ],));
      
}
}
