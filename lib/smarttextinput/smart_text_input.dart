import 'package:flutter/material.dart';

class SmartTextInput extends StatelessWidget {
  final TextEditingController txtCtrl;
  final bool isPassword;
  final bool isGmail;
  final String hintText;
  final bool isMobNumber;

  const SmartTextInput({
    super.key,
    required this.txtCtrl,
    this.isPassword = false,
    this.isGmail = false,
    this.isMobNumber = false,
    this.hintText = "",
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
      decoration: InputDecoration(
        hintText: hintText.isNotEmpty
            ? hintText
            : isPassword
            ? "Enter Password"
            : isMobNumber
            ? "Enter 10 Digit Mobile Number"
            : isGmail
            ? "Enter Gmail"
            : null,
        border: OutlineInputBorder(),
      ),
    );
  }
}
