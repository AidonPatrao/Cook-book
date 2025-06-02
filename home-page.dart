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
        219, 136, 69, 11), title: Text('Cookbook'
      , style: TextStyle(fontWeight: FontWeight.w900, color: Color.fromARGB(
          255, 73, 14, 9)),), centerTitle: true),

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
        selectedItemColor: Color.fromARGB(224, 113, 12, 4),
        unselectedItemColor: Color.fromARGB(255, 201, 213, 225),
        backgroundColor: Color.fromARGB(
            203, 136, 69, 11),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'Home',
            backgroundColor: Color.fromARGB(210, 6, 80, 29),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.local_pizza), label: 'pizza',
            backgroundColor: Color.fromARGB(255, 5, 108, 108),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/pasta.png', width: 50,),
            label: 'pasta',
            backgroundColor: Color.fromARGB(
                216, 136, 69, 11),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.cake_rounded), label: 'cake',
            backgroundColor: Color.fromARGB(255, 181, 140, 17),
          ),
        ],
        iconSize: 50,
      ),
    );  }
}