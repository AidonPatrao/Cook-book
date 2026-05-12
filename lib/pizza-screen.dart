import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';


class PizzaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PizzaScreenState();
  }
}


class _PizzaScreenState extends State<PizzaScreen> {

  final Uri margherita = Uri.parse('https://eu.ooni.com/blogs/recipes/margherita-pizza');
  final Uri pepperoni = Uri.parse('https://pin.it/2jWsRgvq7');

  final Uri hawaiian = Uri.parse('https://www.instagram.com/p/DGwb-x3MSXs/?igsh=a3JjcnVxa3U2ZXc2');

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final width = screenWidth*0.75;//using one variable to assign the same width to all the images(like a switch)
    final height = screenHeight*0.680;//using one variable to assign the same height to all the images(like a switch)

    final cover= BoxFit.cover;//switch

    final CircBorderRadius =BorderRadius.circular(60);

    return Scaffold(backgroundColor: Color.fromARGB(77, 168, 129, 11), body: SingleChildScrollView(
      child: Column(
        children: [SizedBox(height: 20),
          Center(child: Link(uri: margherita, builder: (context, followLink) => GestureDetector(onTap: followLink,
          child: ClipRRect( borderRadius:CircBorderRadius ,
            child: Image.asset('assets/images/margherita.jpg',width:width,height: height,  fit: cover,)
                    ,)
                  ,)
                ,)
            ,),
          SizedBox(height:20),
          Text('Margherita pizza',style:GoogleFonts.archivo(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text('A masterpiece of Italian simplicity, Margherita Pizza features a delicate balance of fresh tomato sauce,'
              ' creamy mozzarella, and fragrant basil on a crisp, wood-fired crust. Elegant in flavor and timeless in appeal,'
              ' it’s a celebration of pure, authentic ingredients.', style: GoogleFonts.dancingScript(fontSize: 25) ,
          ),
          SizedBox(height: 20),
          const Divider(thickness: 20,color: Color.fromARGB(
              107, 136, 69, 11),
          ),
          SizedBox(height: 20),
          Link(uri: pepperoni, builder: (context, followLink) => GestureDetector(onTap: followLink,
            child: ClipRRect( borderRadius:CircBorderRadius ,
              child: Image.asset('assets/images/pepper.jpg',width:width,height: height,  fit: cover,)
              ,)
            ,)
            ,),
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
          SizedBox(height: 20),

          Link(uri: hawaiian, builder: (context, followLink) => GestureDetector(onTap: followLink,
            child: ClipRRect( borderRadius:CircBorderRadius ,
              child: Image.asset('assets/images/hawaiian.jpg',width:width,height: height,  fit: cover,)
              ,)
            ,)
            ,),

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

