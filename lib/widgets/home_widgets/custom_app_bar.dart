import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_safety_app/utils/awesome_quotes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.onTap, this.quoteIndex});
  final Function? onTap;
  final int? quoteIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.pink),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            awesomeQuotes[quoteIndex!],
            style: GoogleFonts.belleza(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
