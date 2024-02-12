import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_safety_app/components/custom_text_field.dart';
import 'package:women_safety_app/components/primary_button.dart';
import 'package:women_safety_app/components/secondary_button.dart';
import 'package:women_safety_app/utils/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "USER LOGIN",
                  style: GoogleFonts.belleza(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/login.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 70,
                ),
                CustomTextField(
                  hintText: "Enter name",
                  prefix: Icon(Icons.person),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: "Enter password",
                  prefix: Icon(Icons.person),
                ),
                SizedBox(
                  height: 10,
                ),
                PrimaryButton(
                  title: "REGISTER",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.belleza(
                        fontSize: 20,
                      ),
                    ),
                    SecondaryButton(
                      title: "Click Here",
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SecondaryButton(
                  title: "Register New User",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
