import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmartTextInput extends StatefulWidget {
  final TextEditingController txtCtrl;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool isPassword;
  final bool isGmail;
  final bool isMobNumber;
  final bool isOtp;
  final String hintText;
  final Color? hintTextCol;
  final bool isLabelText;
  final String labelText;
  final bool readOnly;
  final bool enabled;
  final int defaultMobileLength;
  final int otpDigit;
  final int minimunPasswordlenght;
  final bool showCounterText;
  final bool showprefixIcon;
  final IconData? prefixIcon;
  final bool showSuffixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixTap;
  final Color? focusBorderColor;
  final Color? errorBorderColor;

  const SmartTextInput({
    super.key,
    required this.txtCtrl,
    this.validator,
    this.autovalidateMode,
    this.isPassword = false,
    this.isGmail = false,
    this.isMobNumber = false,
    this.isOtp = false,
    this.hintText = "",
    this.hintTextCol,
    this.isLabelText = false,
    this.labelText = "",
    this.readOnly = false,
    this.enabled = true,
    this.defaultMobileLength = 10,
    this.otpDigit = 6,
    this.minimunPasswordlenght = 6,
    this.showCounterText = false,
    this.showprefixIcon = false,
    this.prefixIcon,
    this.showSuffixIcon = false,
    this.suffixIcon,
    this.onSuffixTap,
    this.focusBorderColor,
    this.errorBorderColor,
  });

  @override
  State<SmartTextInput> createState() => _SmartTextInputState();
}

class _SmartTextInputState extends State<SmartTextInput> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.txtCtrl,
      obscureText: widget.isPassword ? isObscure : false,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      autovalidateMode: widget.autovalidateMode,
      keyboardType: widget.isGmail ? TextInputType.emailAddress
          : widget.isMobNumber ? TextInputType.number : TextInputType.text,

      inputFormatters: widget.isMobNumber || widget.isOtp ?
      [
        FilteringTextInputFormatter.digitsOnly,
      ] : null,

      maxLength: widget.isMobNumber
          ? widget.defaultMobileLength
          : widget.isOtp
          ? widget.otpDigit
          : null,

      validator: widget.validator ??
              (value) {
            if (value == null || value.trim().isEmpty) {
              return "This field is required";
            }
            if (widget.isGmail) {
              if (!RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              ).hasMatch(value)) {
                return "Enter Valid Email";
              }
            }
            if (widget.isMobNumber) {
              if (value.length < widget.defaultMobileLength) {
                return "Enter Valid Mobile Number";
              }
            }
            if (widget.isPassword) {
              if (value.length < widget.minimunPasswordlenght) {
                return "Password Must Be ${widget.minimunPasswordlenght} Characters";
              }
            }
            if (widget.isOtp) {
              if (value.length < widget.otpDigit) {
                return "Enter Valid OTP";
              }
            }
            return null;
          },
      decoration: InputDecoration(
        counterText: widget.showCounterText ? null : "",
        prefixIcon: widget.showprefixIcon && widget.prefixIcon != null
            ? Icon(widget.prefixIcon)
            : widget.isGmail
            ? const Icon(Icons.email_outlined)
            : widget.isMobNumber
            ? const Icon(Icons.phone_outlined)
            : widget.isPassword
            ? const Icon(Icons.lock_outline)
            : null,

        suffixIcon: widget.isPassword
            ? IconButton(
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          icon: Icon(
            isObscure
                ? Icons.visibility_off
                : Icons.visibility,
          ),
        )
            : widget.showSuffixIcon && widget.suffixIcon != null
            ? IconButton(
          onPressed: widget.onSuffixTap,
          icon: Icon(widget.suffixIcon),
        )
            : null,

        hintStyle: TextStyle(
          color: widget.hintTextCol ?? Colors.grey,
          fontStyle: FontStyle.italic,
        ),

        labelText: widget.isLabelText
            ? widget.labelText.isNotEmpty
            ? widget.labelText
            : widget.isPassword
            ? "Password"
            : widget.isMobNumber
            ? "Mobile Number"
            : widget.isGmail
            ? "Email"
            : null
            : null,

        hintText: widget.hintText.isNotEmpty ? widget.hintText
            : widget.isPassword ? "Enter Password"
            : widget.isMobNumber ? "Enter Mobile Number"
            : widget.isGmail ? "Enter Email"
            : widget.isOtp ? "Enter OTP"
            : null,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: widget.focusBorderColor ?? Colors.green,
            width: 2,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: widget.errorBorderColor ?? Colors.red,
            width: 2,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: widget.errorBorderColor ?? Colors.red,
            width: 2,
          ),
        ),
      ),
    );
  }
}