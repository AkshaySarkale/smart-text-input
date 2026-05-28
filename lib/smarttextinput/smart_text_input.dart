import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmartTextInput extends StatelessWidget {
  final TextEditingController txtCtrl;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool isPassword;
  final bool isGmail;
  final String hintText;
  final bool isMobNumber;
  final Color? hintTextCol;
  final bool isLabelText;
  final String labelText;
  final bool readOnly;
  final int defaultMobileLength;
  final bool showSuffixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixTap;
  final int otpDigit;
  final bool isOtp;
  final bool enabled;
  final bool showprefixIcon;
  final IconData? prefixIcon;
  final int minimunPasswordlenght;
  final bool showCounterText;
  final Color? focusBorderColor;
  final Color? errorBorderColor;

  const SmartTextInput({
    super.key,
    required this.txtCtrl,
    this.isPassword = false,
    this.validator,
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
    this.enabled = true,
    this.minimunPasswordlenght = 6,
    this.showCounterText = false,
    this.focusBorderColor,
    this.errorBorderColor,
    this.autovalidateMode,
    this.showSuffixIcon=false,
    this.suffixIcon,
    this.onSuffixTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtCtrl,
      obscureText: isPassword ? true : false,
      validator:
          validator ??
          (value) {
            if (value == null || value.trim().isEmpty) {
              return "This field is required";
            }
            if (isGmail) {
              if (!RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              ).hasMatch(value)) {
                return "Enter valid email";
              }
            }
            if (isMobNumber) {
              if (value.length != defaultMobileLength) {
                return "Enter Valid Mobile Number";
              }
            }
            if (isPassword) {
              if (value.length != minimunPasswordlenght) {
                return "Enter Valid Password";
              }
            }
            if (isOtp) {
              if (value.length != otpDigit) {
                return "Enter Valid Otp";
              }
            }
            return null;
          },
      inputFormatters: isMobNumber || isOtp
          ? [FilteringTextInputFormatter.digitsOnly]
          : null,
      autovalidateMode: autovalidateMode,
      keyboardType: isGmail
          ? TextInputType.emailAddress
          : isMobNumber
          ? TextInputType.number
          : TextInputType.text,
      readOnly: readOnly,
      maxLength: isMobNumber
          ? defaultMobileLength
          : isOtp
          ? otpDigit
          : isPassword
          ? minimunPasswordlenght
          : null,
      decoration: InputDecoration(
        counterText: showCounterText ? null : "",
        prefixIcon: showprefixIcon && prefixIcon != null
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
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: focusBorderColor ?? Colors.greenAccent,
            width: 2,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: errorBorderColor ?? Colors.red,
            width: 2,
          ),
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
