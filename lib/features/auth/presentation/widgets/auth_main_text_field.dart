import 'package:flutter/material.dart';
import 'package:laza/config/Theme/colors.dart';

class MainTextField extends StatelessWidget {
  final String text;
  final bool? obsecureText;

  const MainTextField({super.key, required this.text, this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(color: AppColors.muted, fontSize: 13)),
        GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: TextField(
            cursorColor: AppColors.dark,
            obscureText: obsecureText ?? false,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.muted),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.muted),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.muted),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
