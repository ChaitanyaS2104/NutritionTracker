import 'package:flutter/material.dart';
import '../colors.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final String? Function(String?)? validator;

  const CustomInputField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator, // <-- used by Form
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.textSecondary, // set your hint text color here
          fontSize: 16, // optional: change font size
        ),
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: AppColors.textSecondary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
