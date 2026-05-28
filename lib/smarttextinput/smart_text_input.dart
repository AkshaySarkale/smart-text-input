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
  final int otpDigit;
  final bool isOtp;
  final bool showprefixIcon;
  final IconData? prefixIcon;

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
    this.otpDigit = 6,
    this.isOtp = false,
    this.showprefixIcon = false,
    this.prefixIcon,
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
      readOnly: readOnly,
      minLines: isPassword ? 6 : null,
      maxLength: isMobNumber
          ? defaultMobileLength
          : isOtp
          ? otpDigit
          : null,
      decoration: InputDecoration(
        prefixIcon: showprefixIcon && prefixIcon !=null
            ? Icon(prefixIcon)
            : isGmail
            ? const Icon(Icons.email_outlined)
            : isMobNumber
            ? const Icon(Icons.phone_outlined)
            : isPassword
            ? const Icon(Icons.password)
            : null,
        hintStyle: TextStyle(
          color: hintTextCol ?? Colors.grey,
          fontStyle: FontStyle.italic,
        ),
        labelText: isLabelText
            ? labelText.isNotEmpty
                  ? labelText
                  : isPassword
                  ? "Password"
                  : isMobNumber
                  ? "Mobile Number"
                  : isGmail
                  ? "Gmail"
                  : null
            : null,
        hintText: hintText.isNotEmpty
            ? hintText
            : isPassword
            ? "Enter Password"
            : isMobNumber
            ? "Enter $defaultMobileLength Digit Mobile Number"
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
