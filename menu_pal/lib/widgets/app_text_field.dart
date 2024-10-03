import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.labelText,
    this.icon,
    this.controller,
    this.textInputAction,
    this.keyboardType,
    this.onTap,
    this.onChanged,
  });

  final String labelText;
  final IconData? icon;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      onTap: onTap,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
          label: Text(labelText),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          prefixIcon: Icon(icon)),
    );
  }
}
