import 'package:flutter/material.dart';
import 'package:forzagithub/main.dart';
import 'package:forzagithub/home-page.dart';
class loggingIn extends StatefulWidget{
     const loggingIn({super.key});
  State<StatefulWidget> createState(){
   return _SignUpState();
  }
}

class _SignUpState extends State<loggingIn>{


 int myIndex =0;

 Widget CurrentScreen = MyHomepage();
 @override
 Widget build(ctx) {
  return Builder(
      builder: (context) {
       return Scaffold(
         body: Stack(
             children: [Image.asset('images/login-page.jpg',fit: BoxFit.cover, height: double.maxFinite,width: double.maxFinite,),
              Center(
               child: SingleChildScrollView(
                 child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SizedBox(width: 300,

                      child: TextField(controller: usernameController,
                       style: TextStyle(color: Colors.black,),
                       decoration: InputDecoration(
                        fillColor: Color.fromRGBO(255, 255, 255, 0.6),
                        filled: true,
                        //used to fill color inside the textbox
                        hintText: 'User Name:',
                        hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                        border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(100),
                        ),
                       ),
                      ),
                    ),

                   SizedBox(height: 20),
                   SizedBox(width: 300,
                    child: TextField(controller: emailController,
                     style: TextStyle(color: Colors.black,),
                     decoration: InputDecoration(
                      fillColor: Color.fromRGBO(255, 255, 255, 0.6),
                      filled: true,
                      //used to fill color inside the textbox
                      hintText: 'Email id:',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(100),
                      ),
                     ),
                    ),
                   ),
                   SizedBox(height: 20),
                   SizedBox(width: 300,
                    child: TextField(controller: passwordController,
                     style: TextStyle(color: Colors.black,),
                     decoration: InputDecoration(
                      fillColor: Color.fromRGBO(255, 255, 255, 0.6),
                      filled: true,
                      //used to fill color inside the textbox
                      hintText: 'Password:',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(100),
                      ),
                     ),
                    ),
                   ),
                   SizedBox(height: 20),
                   SizedBox(width: 300,
                    child: TextField(controller: confirmPasswordController,
                     style: TextStyle(color: Colors.black,),
                     decoration: InputDecoration(
                      fillColor: Color.fromRGBO(255, 255, 255, 0.6),
                      filled: true,
                      //used to fill color inside the textbox
                      hintText: 'Confirm password:',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(100),
                      ),
                     ),
                    ),
                   ),
                   SizedBox(height: 20),
                   SizedBox(width: 200, height: 45,
                    child: ElevatedButton(
                     onPressed: () {
                      if (passwordController.text ==
                          confirmPasswordController.text) {
                       if (passwordController.text.length > 5) {
                        if (confirmPasswordController.text.length > 5) {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CurrentScreen,));
                        }
                       }
                      }
                      log_in(context);
                     },
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Color.fromRGBO(
                             255, 192, 203, 0.9), foregroundColor: Color.fromARGB(
                         255, 87, 4, 9)),
                     child: Text('Login!!'),
                    ),
                   )
                  ],
                 ),
               ),
              ),
             ]
         ),
       );
      }
  );
 }
}