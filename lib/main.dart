import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_safety_app/screens/home_screen.dart';
import 'package:women_safety_app/screens/login_screen.dart';
import 'package:women_safety_app/screens/register_child_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.firaSansTextTheme(
            Theme.of(context).textTheme,
          ),
          primarySwatch: Colors.blue,
        ),
        // home: const HomeScreen(title: 'Women Safety App'),
        home: const LoginScreen()
        // routes: {
        //   // '/': (context) => HomeScreen(title: "Women Safety App"),
        //   '/': (context) => RegisterUserScreen(),
        //   // '/loginScreen': (context) => LoginScreen(),
        //   // '/registerScreen': (context) => RegisterUserScreen(),
        // },
        );
  }
}
