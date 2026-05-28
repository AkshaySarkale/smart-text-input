import 'package:flutter/material.dart';

class SmartTextInput extends StatelessWidget {
  final TextEditingController txtCtrl;
  final bool isPassword;
  final bool isGmail;
  final String hintText;
  final bool isMobNumber;
  final Color? hintTextCol;
  final bool isLabelText;
  final String labelText;
  final bool readOnly;
  final int defaultMobileLength;

  const SmartTextInput({
    super.key,
    required this.txtCtrl,
    this.isPassword = false,
    this.isGmail = false,
    this.isMobNumber = false,
    this.hintText = "",
    this.hintTextCol,
    this.isLabelText = false,
    this.labelText = "",
    this.readOnly = false,
    this.defaultMobileLength = 10,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtCtrl,
      obscureText: isPassword,
      keyboardType: isGmail
          ? TextInputType.emailAddress
          : isMobNumber
          ? TextInputType.number
          : TextInputType.text,
      readOnly: false,
      maxLength: isMobNumber ? defaultMobileLength : null,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: hintTextCol ?? Colors.grey,
          fontStyle: FontStyle.italic,
        ),
        labelText: isLabelText ? labelText.isNotEmpty
            ? labelText
            : isPassword
            ? "Password"
            : isMobNumber
            ? "Mobile Number"
            : isGmail
            ? "Gmail"
            : null : null,
        hintText: hintText.isNotEmpty
            ? hintText
            : isPassword
            ? "Enter Password"
            : isMobNumber
            ? "Enter 10 Digit Mobile Number"
            : isGmail
            ? "Enter Gmail"
            : null,
        border: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid),
        ),
      ),
    );
  }
}
