import 'package:flutter/material.dart';

class GenderChoiceButton extends StatelessWidget {
  final String gender;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;

  const GenderChoiceButton({
    super.key, required this.gender, required this.backgroundColor, required this.textColor, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.38,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
        ),
        child: Center(child: Text(gender, style: TextStyle(fontSize: 17, color: textColor),)),
      ),
    );
  }
}
