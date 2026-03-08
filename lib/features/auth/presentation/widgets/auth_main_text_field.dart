import 'package:flutter/material.dart';
import 'package:laza/core/Theme/colors.dart';

class AuthTextField extends StatelessWidget {
  final String text;
  final bool? obsecureText;

  const AuthTextField({super.key, required this.text, this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(color: AppColors.muted, fontSize: 13)),
        TextField(
          cursorColor: AppColors.dark,
          obscureText: obsecureText ?? false,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.muted),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.muted),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.muted),
            ),
          ),
        ),
      ],
    );
  }
}
