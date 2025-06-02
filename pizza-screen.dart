import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PizzaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PizzaScreenState();
  }
}


class _PizzaScreenState extends State<PizzaScreen> {

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: Color.fromARGB(77, 168, 129, 11), body: SingleChildScrollView(
      child: Column(
        children: [Center(child: Image.asset('images/margherita.jpg',width:screenWidth,height: screenHeight*0.4,  fit: BoxFit.fitWidth)),
          SizedBox(height:20),
          Text('Margherita pizza',style:GoogleFonts.archivo(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text('A masterpiece of Italian simplicity, Margherita Pizza features a delicate balance of fresh tomato sauce,'
              ' creamy mozzarella, and fragrant basil on a crisp, wood-fired crust. Elegant in flavor and timeless in appeal,'
              ' it’s a celebration of pure, authentic ingredients.', style: GoogleFonts.dancingScript(fontSize: 25) ,
          ), AnimatedContainer(duration: Durations.medium3),
          SizedBox(height: 20),
          const Divider(thickness: 20,color: Color.fromARGB(
              107, 136, 69, 11),
          ),
          Image.asset('images/pepper.jpg',width: screenWidth*2, height:screenHeight*0.4, fit: BoxFit.fitWidth ),
          SizedBox(height: 20),
          Text('Pepperoni pizza',style:GoogleFonts.archivo(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text('A golden crust topped with rich tomato sauce, '
              'melted mozzarella, and perfectly spiced pepperoni. Bold, '
              'savory, and irresistibly timeless.', style: GoogleFonts.dancingScript(fontSize: 25) ,
          ),
          SizedBox(height: 10),
          const Divider(thickness: 20,color: Color.fromARGB(124, 136, 69, 11),
          ),
          Image.asset('images/hawaiian.jpg',width: screenWidth*2, height:screenHeight*0.4, fit: BoxFit.fitWidth ),
          SizedBox(height: 20),
          Text('Hawaiian pizza',style:GoogleFonts.archivo(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text('A sweet and savory delight topped with juicy pineapple,'
              ' smoky ham, rich tomato sauce, and melted mozzarella.'
              ' A tropical twist on a classic favorite.', style: GoogleFonts.dancingScript(fontSize: 25) ,
          ),
          SizedBox(height: 10),
        ],
      ),
    ),

    );
  }
  }

