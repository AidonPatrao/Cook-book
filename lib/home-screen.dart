import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(children:[Image.asset('images/cook-book.jpg',height:double.maxFinite, width: double.maxFinite, fit: BoxFit.cover),
      Center(child: Image.asset('images/welcome.png',height: screenHeight*0.6,width: screenWidth,)),
      ],
        

    );
  }
}
//6, 76, 70, 1