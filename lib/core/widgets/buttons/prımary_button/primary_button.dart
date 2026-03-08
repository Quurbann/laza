import 'package:flutter/material.dart';
import 'package:laza/core/Theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  
  final String text;
  final VoidCallback? onTap;

  const PrimaryButton({
    super.key, required this.text, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 40),
      decoration: BoxDecoration(color: AppColors.primary),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(color: AppColors.white, fontSize: 15),
        ),
      ),
      );
  }
}