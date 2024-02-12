import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_safety_app/components/custom_text_field.dart';
import 'package:women_safety_app/components/primary_button.dart';
import 'package:women_safety_app/components/secondary_button.dart';
import 'package:women_safety_app/screens/register_child_screen.dart';
import 'package:women_safety_app/screens/register_parent_screen.dart';
import 'package:women_safety_app/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordShown = true;
  final _formKey = GlobalKey<FormState>();
  final _formData = Map<String, Object>();

  _onSubmit() {
    _formKey.currentState!.save();
  }

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
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: "Enter email",
                        prefix: Icon(Icons.person),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        onSave: (email) {
                          _formData['email'] = email ?? "";
                        },
                        validate: (email) {
                          if (email!.isEmpty ||
                              email.length < 3 ||
                              email.contains("@")) {
                            return ("Enter correct email");
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        hintText: "Enter password",
                        isPassword: isPasswordShown,
                        prefix: Icon(Icons.vpn_key_rounded),
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordShown = !isPasswordShown;
                            });
                          },
                          icon: isPasswordShown
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                        validate: (password) {
                          if (password!.isEmpty || password.length < 8) {
                            return ("Enter correct password");
                          }
                          return null;
                        },
                        onSave: (password) {
                          _formData["password"] = password ?? "";
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PrimaryButton(
                  title: "Log In",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _onSubmit();
                    }
                  },
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
                        color: linkColor),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SecondaryButton(
                      title: "Register As a Child",
                      onPressed: () {
                        goTo(context, RegisterChildScreen());
                      },
                      color: Colors.pink,
                    ),
                    SecondaryButton(
                      title: "Register As a Guardian",
                      onPressed: () {
                        goTo(context, RegisterGuradianScreen());
                      },
                      color: Color.fromARGB(255, 245, 68, 68),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
