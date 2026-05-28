import 'package:flutter/material.dart';

class SmartTextInput extends StatelessWidget {
  final TextEditingController txtCtrl;
  final bool isPassword;
  final bool isGmail;
  final bool isMobNumber;

  const SmartTextInput({
    super.key,
    required this.txtCtrl,
    this.isPassword = false,
    this.isGmail = false,
    this.isMobNumber = false,
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
        border: OutlineInputBorder()
      ),
    );
  }
}
