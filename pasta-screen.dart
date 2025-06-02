import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PastaScreen extends StatefulWidget {

  const PastaScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _PastaScreenState();
  }
}

class _PastaScreenState extends State<PastaScreen> {
 late final screenHeight;
 late final screenWidth;


  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: Color.fromARGB(77, 168, 129, 11), body: SingleChildScrollView(
        child: Column(
          children: [Center(child: Image.asset('images/ravioli.jpg',width:screenWidth*2,height: screenHeight*0.4,  fit: BoxFit.fitWidth)),
            SizedBox(height:20),
             Text('Ravioli',style:GoogleFonts.archivo(fontSize: 30),
             ),
            SizedBox(height: 10),
            Text('Tender pasta pockets filled with flavorful delights, from creamy cheeses to savory meats and vibrant vegetables.'
                ' A versatile Italian favorite, perfect with your favorite sauce.', style: GoogleFonts.dancingScript(fontSize: 25) ,
            ),
            SizedBox(height: 20),
                const Divider(thickness: 20,color: Color.fromARGB(
                    107, 136, 69, 11),
                ),
            Image.asset('images/penne.jpg',width: screenWidth*2, height:screenHeight*0.4, fit: BoxFit.fitWidth ),
            SizedBox(height: 20),
            Text('Pasta penne',style:GoogleFonts.archivo(fontSize: 30),
            ),
            SizedBox(height: 10),
            Text('Penne is a short, tube-shaped pasta with angled'
                ' ends and ridges that hold sauces well. Perfect for creamy,'
                ' spicy, or baked dishes, it’s a versatile choice with a satisfying bite.', style: GoogleFonts.dancingScript(fontSize: 25) ,
            ),
            SizedBox(height: 10),
            const Divider(thickness: 20,color: Color.fromARGB(124, 136, 69, 11),
            ),
            Image.asset('images/bolognese.jpg',width: screenWidth*2, height:screenHeight*0.4, fit: BoxFit.fitWidth ),
            SizedBox(height: 20),
            Text('Spaghetti bolognese',style:GoogleFonts.archivo(fontSize: 30),
            ),
            SizedBox(height: 10),
            Text('A classic Italian dish made with long, thin spaghetti noodles'
                ' topped with a rich, slow-cooked meat and tomato sauce.'
                ' Hearty, flavorful, and comforting—perfect for any pasta lover.', style: GoogleFonts.dancingScript(fontSize: 25) ,
            ),
            SizedBox(height: 10),
          ],
        ),
    ),
    );
  }
}
