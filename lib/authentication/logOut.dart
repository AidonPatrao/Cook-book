import 'package:flutter/material.dart';
import 'package:forzagithub/authentication/login.dart';
import 'package:url_launcher/link.dart';


class logOut extends StatefulWidget {
  @override
  State<logOut> createState() => _logOutState();
}

class _logOutState extends State<logOut> {

  final Uri githubLink= Uri.parse('https://github.com/AidonPatrao');
  final Uri linkedin= Uri.parse('https://tinyurl.com/Aidon-Patrao');


  @override
  Widget build(ctx){

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth  = MediaQuery.of(context).size.width;

    return Stack(
      children:[ SizedBox(height: deviceHeight,
      width: deviceWidth*0.6, child: Positioned(child: Image.asset('images/logOut-page.png',fit: BoxFit.cover,)),
      ),




        Drawer(elevation: 20, width: 300,backgroundColor: Color.fromRGBO(255,255,255,0), shape:RoundedRectangleBorder(borderRadius:BorderRadius.only(topRight: Radius.circular(30),
          bottomRight: Radius.circular(30)),
      ), child:ListView(children: [
        Center(child: SizedBox(width: 250,height: 60,child: Text('Dev-Links🐙🐙:',style: TextStyle(fontSize: 30,color: Colors.white),),
        ),
        ),SizedBox(height: 10,),
        Link(uri: githubLink,
            builder: (context, followLink) =>  TextButton(onPressed: followLink,
                child: SizedBox(height:60,width:250,child: Center(child: Text('°Click for github',style: TextStyle(fontSize: 30,color: Colors.lightGreenAccent),
                      ),
                   ),
                ),
            ),
          ),
          SizedBox(height: 20),
          Link(uri: linkedin,
            builder: (context, followLink) =>  TextButton(onPressed: followLink,
              child: SizedBox(height:60,width:250,child: Center(child: Text('°Click for Linkedin',style: TextStyle(fontSize: 30,color: Colors.lightGreenAccent),
              ),
              ),
              ),
            ),
          ),
          SizedBox(height: 400),
        ListTile(title: Text('Log-Out?'),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),tileColor: Colors.amber,
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loggingIn()));
          },
        ),
      ],),


      ), ]
    );

}
}