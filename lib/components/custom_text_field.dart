import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.controller,
      this.enable = true,
      this.focusNode,
      this.hintText,
      this.isPassword = false,
      this.keyboardType,
      this.maxLines,
      this.onSave,
      this.prefix,
      this.suffix,
      this.validate,
      this.check,
      this.textInputAction});

  final String? hintText;
  final TextEditingController? controller;
  final String Function(String?)? validate;
  final String? Function(String?)? onSave;
  final int? maxLines;
  final bool isPassword;
  final bool enable;
  final bool? check;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enable == true ? true : false,
      maxLines: maxLines == null ? 1 : maxLines,
      onSaved: onSave,
      focusNode: focusNode,
      textInputAction: textInputAction,
      keyboardType: keyboardType == null ? TextInputType.text : keyboardType,
      controller: controller,
      validator: validate,
      obscureText: isPassword == false ? false : isPassword,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: hintText,
        //This is when you click on the text field and keyboard appears
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            style: BorderStyle.solid, color: Color.fromRGBO(248, 131, 121, 1),
            // color: Theme.of(context).primaryColor,
          ),
        ),
        //This is the border color at default
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.pink,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
