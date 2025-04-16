import 'package:flutter/material.dart';

/// A reusable form field with built-in validation support
class ValidatedFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  final String? errorText;
  final Widget? prefixIcon;
  final bool readOnly;
  final bool obscureText;
  final bool autofocus;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool autovalidateMode;
  final String? Function(String?)? validator;
  final String? helperText;

  const ValidatedFormField({
    super.key,
    this.controller,
    required this.labelText,
    this.errorText,
    this.prefixIcon,
    this.readOnly = false,
    this.obscureText = false,
    this.autofocus = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.onTap,
    this.autovalidateMode = false,
    this.validator,
    this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        errorText: errorText,
        helperText: helperText,
      ),
      readOnly: readOnly,
      obscureText: obscureText,
      autofocus: autofocus,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onTap: onTap,
      autovalidateMode: autovalidateMode
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      validator: validator,
    );
  }
}
