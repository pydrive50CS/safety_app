import 'package:flutter/material.dart';

Color primaryColor = Colors.pink;
Color textColor = Color.fromRGBO(255, 157, 164, 1);
Color backgroundColor = Color.fromRGBO(126, 0, 108, 1);
Color linkColor = Colors.blueAccent.shade700;

void goTo(BuildContext context, Widget nextScreen) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => nextScreen,
      ));
}
