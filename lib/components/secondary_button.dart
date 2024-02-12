import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          onPressed;
        },
        child: Text(
          title,
          style: GoogleFonts.belleza(
              fontSize: 20, color: Colors.blueAccent.shade700),
        ),
      ),
    );
  }
}
