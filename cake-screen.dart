import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CakeScreen extends StatefulWidget {

  const CakeScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _CakeScreenState();
  }
}

class _CakeScreenState extends State<CakeScreen> {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: Color.fromARGB(77, 168, 129, 11), body: SingleChildScrollView(
      child: Column(
        children: [Center(child: Image.asset('images/cookies.jpg',width:screenWidth*2,height: screenHeight*0.4,  fit: BoxFit.fitWidth)),
          SizedBox(height:20),
          Text('Cookies & Cream',style:GoogleFonts.archivo(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text('A decadent treat layered with rich chocolate sponge, '
              'creamy frosting, and crushed chocolate cookies. Smooth, '
              'crunchy, and irresistibly indulgent.', style: GoogleFonts.dancingScript(fontSize: 25) ,
          ),
          SizedBox(height: 20),
          const Divider(thickness: 20,color: Color.fromARGB(
              107, 136, 69, 11),
          ),
          Image.asset('images/carrot.jpg',width: screenWidth*2, height:screenHeight*0.4, fit: BoxFit.fitWidth ),
          SizedBox(height: 20),
          Text('Carrot cake',style:GoogleFonts.archivo(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text('A moist, spiced cake made with fresh grated carrots and warm cinnamon, '
              'layered with smooth cream cheese frosting. Wholesome,'
              ' rich, and delightfully comforting.', style: GoogleFonts.dancingScript(fontSize: 25) ,
          ),
          SizedBox(height: 10),
          const Divider(thickness: 20,color: Color.fromARGB(124, 136, 69, 11),
          ),
          Image.asset('images/velvet.jpg',width: screenWidth*2, height:screenHeight*0.4, fit: BoxFit.fitWidth ),
          SizedBox(height: 20),
          Text('Red Velvet',style:GoogleFonts.archivo(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text('A luxurious, velvety-soft cake with a hint of cocoa and a signature red hue, '
              'layered with smooth cream cheese frosting. Elegant, rich, '
              'and irresistibly classic.', style: GoogleFonts.dancingScript(fontSize: 25) ,
          ),
          SizedBox(height: 10),
        ],
      ),
    ),
    );
  }
}


