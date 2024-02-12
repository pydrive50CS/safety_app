import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_safety_app/components/custom_text_field.dart';
import 'package:women_safety_app/components/primary_button.dart';
import 'package:women_safety_app/components/secondary_button.dart';
import 'package:women_safety_app/screens/login_screen.dart';
import 'package:women_safety_app/utils/constants.dart';

class RegisterGuradianScreen extends StatefulWidget {
  const RegisterGuradianScreen({super.key});

  @override
  State<RegisterGuradianScreen> createState() => _RegisterGuradianScreenState();
}

class _RegisterGuradianScreenState extends State<RegisterGuradianScreen> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    "Register As a Parent",
                    style: GoogleFonts.belleza(
                        fontSize: 30,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                    hintText: "Enter name",
                    prefix: Icon(Icons.person),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    onSave: (name) {
                      _formData['name'] = name ?? "";
                    },
                    validate: (name) {
                      if (name!.isEmpty) {
                        return ("Enter correct name");
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: "Enter phone",
                    prefix: Icon(Icons.phone),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    onSave: (phone) {
                      _formData['phone'] = phone ?? "";
                    },
                    validate: (phoneno) {
                      if (phoneno!.isEmpty || (phoneno.length != 10)) {
                        return ("Enter correct phone");
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: "Enter email",
                    prefix: Icon(Icons.email),
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
                    hintText: "Enter child email",
                    prefix: Icon(Icons.email),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    onSave: (childEmail) {
                      _formData['childEmail'] = childEmail ?? "";
                    },
                    validate: (childEmail) {
                      if (childEmail!.isEmpty ||
                          childEmail.length < 3 ||
                          childEmail.contains("@")) {
                        return ("Enter correct guardian email");
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
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: "Confirm password",
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
                    validate: (confirmPassword) {
                      if (confirmPassword!.isEmpty ||
                          confirmPassword.length < 8) {
                        return ("Enter correct password");
                      }
                      return null;
                    },
                    onSave: (confirmPassword) {
                      _formData["confirmPassword"] = confirmPassword ?? "";
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  PrimaryButton(
                    title: "Register",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _onSubmit();
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SecondaryButton(
                    title: "Log In",
                    onPressed: () {
                      goTo(context, LoginScreen());
                    },
                    color: linkColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
