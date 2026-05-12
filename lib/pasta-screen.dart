import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

class PastaScreen extends StatefulWidget {

  const PastaScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _PastaScreenState();
  }
}

class _PastaScreenState extends State<PastaScreen> {

  final Uri ravioli = Uri.parse('https://www.instagram.com/p/DC_qcz8OTYF/?igsh=MXBoa3I3dTcweWdnNg==');
  final Uri penne = Uri.parse('https://pin.it/4zw9AUUfd');

  final Uri bolognese =Uri.parse('https://www.instagram.com/p/DC_qcz8OTYF/?igsh=MXBoa3I3dTcweWdnNg==');
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final width = screenWidth*0.75;//using one variable to assign the same width to all the images(like a switch)
    final height = screenHeight*0.680;//using one variable to assign the same height to all the images(like a switch)

    final cover= BoxFit.cover;//switch method
 final CircBorderRadius =BorderRadius.circular(60);//switch method

    return Scaffold(backgroundColor: Color.fromARGB(77, 168, 129, 11), body: SingleChildScrollView(
        child: Column(
          children: [SizedBox(height: 20,),
            Link(uri: ravioli, builder: (context, followLink) => GestureDetector(onTap:followLink,
             child: ClipRRect( borderRadius:CircBorderRadius ,
                   child: Image.asset('assets/images/ravioli.jpg',width:width,height: height,  fit: cover),
                  ),
               ),
            ),
             Text('Ravioli',style:GoogleFonts.archivo(fontSize: 30),
             ),
            Text('Tender pasta pockets filled with flavorful delights, from creamy cheeses to savory meats and vibrant vegetables.'
                ' A versatile Italian favorite, perfect with your favorite sauce.', style: GoogleFonts.dancingScript(fontSize: 25) ,
            ),
            SizedBox(height: 20),
                const Divider(thickness: 20,color: Color.fromARGB(
                    107, 136, 69, 11),
                ),
            SizedBox(height: 20,),

            Link(uri: penne, builder: (context, followLink) => GestureDetector(onTap: followLink,
            child:ClipRRect( borderRadius: CircBorderRadius ,
                  child: Image.asset('assets/images/penne.jpg',width: width, height:height, fit: cover  ,
                    ),
                  ),
                ),
            ),

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

            SizedBox(height: 20),
            Link(uri: bolognese, builder: (context, followLink) => GestureDetector(onTap: followLink,
            child:ClipRRect( borderRadius: CircBorderRadius ,
                  child: Image.asset('assets/images/bolognese.jpg',width: width, height:height, fit: cover  ,
                    ),
                  ),
                ),
            ),

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
