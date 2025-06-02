import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('images/cook-book.jpg',height:double.maxFinite, width: double.maxFinite, fit: BoxFit.cover),
    );
  }
}
