import 'package:flutter/material.dart';
import 'package:forzagithub/home-screen.dart';
import 'pizza-screen.dart';
import 'pasta-screen.dart';
import 'cake-screen.dart';
import 'authentication/logOut.dart';

class MyHomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

final List<Widget> Screens=[
  HomeScreen(),
  PizzaScreen(),
  PastaScreen(),
  CakeScreen()];

Widget CurrentScreen = MyHomepage();

int myIndex =0;

class _MyHomePage extends State<MyHomepage> {
  final navMenu = logOut();

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: navMenu,appBar: AppBar(backgroundColor: Color.fromARGB(
        255, 71, 75, 80), title: Text('Cθθk  bθθk',
       style: TextStyle(fontWeight: FontWeight.w900, color: Color.fromARGB(
          255, 188, 171, 24),),), centerTitle: true),

      body: Screens[myIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,

        onTap: (index) {
          setState(() {
            myIndex = index;
            if (index == 0) {
              CurrentScreen = MyHomepage();
            } else if (index == 1) {
              CurrentScreen = PizzaScreen();
            } else if (index == 2) {
              CurrentScreen = PastaScreen();
            } else {
              CurrentScreen = CakeScreen();
            }
          });
        },
        currentIndex: myIndex,
        selectedItemColor: Color.fromARGB(255, 188, 171, 24),
        unselectedItemColor: Color.fromARGB(255, 201, 213, 225),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'Home',
            backgroundColor: Color.fromARGB(215, 1, 6, 11),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.local_pizza), label: 'pizza',
            backgroundColor: Color.fromARGB(255, 12, 50, 80),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/pasta.png', width: 50,),
            label: 'pasta',
            backgroundColor: Color.fromARGB(
                255, 71, 75, 80),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.cake_rounded), label: 'cake',
            backgroundColor: Color.fromARGB(255, 3, 40, 67),
          ),
        ],
        iconSize: 50,
      ),
    );  }
}