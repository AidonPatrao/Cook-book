import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:forzagithub/authentication/login.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:forzagithub/home-page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDaLaZfvmjEvp5XxZ0mKfzLJQgZSwdGtdY",
        authDomain: "cook-book-cc8ae.firebaseapp.com",
        projectId: "cook-book-cc8ae",
        storageBucket: "cook-book-cc8ae.appspot.com", // Also fixed typo: should be .app**spot**.com
        messagingSenderId: "202004443752",
        appId: "1:202004443752:web:be3301cb70aeb8a5c781dd",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {


  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}


final usernameController = TextEditingController();
final  emailController = TextEditingController();
final passwordController = TextEditingController();
final  confirmPasswordController = TextEditingController();

void log_in(BuildContext context) async {
  print('== log_in button tapped ==');

  final email = emailController.text.trim();
  final password = passwordController.text.trim();
  final confirmPassword = confirmPasswordController.text.trim();

  print('Email: $email');
  print('Password: $password');
  print('Confirm Password: $confirmPassword');

  if (password != confirmPassword) {
    print('❌ Passwords do not match');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Passwords do not match')),
    );
    return;
  }

  try {
    final userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    print('✅ User logged in successfully');


  } catch (e) {
    print('❌ Firebase sign-up error: $e');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Login failed: $e')),
    );
  }
}



@override
void dispose() {
  emailController.dispose();
  passwordController.dispose();

}

final  Widget login = loggingIn();
class _MyAppState extends State<MyApp> {

   @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:loggingIn(),

    );
  }}


