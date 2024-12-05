import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool showLabel;

  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.showLabel = true,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onTap: onTap,
      readOnly: onTap != null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Rounded border adjusted
          borderSide: BorderSide.none, // Removing default border
        ),
        filled: true,
        fillColor: const Color(0xFFF8F8F6), // Background color to match login page 2
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 13.0), // Adjusting padding for consistency
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0), // Adjust padding to match design
          child: prefixIcon,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0), // Adjust padding for suffix icon
          child: suffixIcon,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 0.5), // Match the focused border color and width
        ),
      ),
    );
  }
}
