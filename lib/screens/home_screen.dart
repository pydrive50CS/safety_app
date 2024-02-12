import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_safety_app/utils/awesome_quotes.dart';
import 'package:women_safety_app/utils/constants.dart';
import 'package:women_safety_app/widgets/home_widgets/custom_app_bar.dart';
import 'package:women_safety_app/widgets/home_widgets/custom_carousel.dart';
import 'package:women_safety_app/widgets/home_widgets/emergency/emergency_widget.dart';
import 'package:women_safety_app/widgets/home_widgets/live_safe.dart';
import 'package:women_safety_app/widgets/safehome/safe_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? qIndex;
  getRandomQuote() {
    Random random = Random();
    qIndex = random.nextInt(awesomeQuotes.length);
    print(qIndex);
  }

  @override
  void initState() {
    getRandomQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white,
        foregroundColor: Color.fromRGBO(255, 157, 164, 1),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              CustomAppBar(
                quoteIndex: qIndex!,
                onTap: () {
                  getRandomQuote();
                  setState(() {});
                },
              ),
              Expanded(
                child: ListView(shrinkWrap: true, children: [
                  CustomCarousel(),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        style: GoogleFonts.belleza(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(255, 157, 164, 1),
                        ),
                        "Emergency"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: EmergencyWidget(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        style: GoogleFonts.belleza(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(255, 157, 164, 1),
                        ),
                        "Explore LiveSafe"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: LiveSafe(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SafeHome(),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
