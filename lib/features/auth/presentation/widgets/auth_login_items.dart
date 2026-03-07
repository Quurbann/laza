import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza/config/Theme/colors.dart';

class LoginItems extends StatelessWidget {

  final String title;
  final String image;
  final Color color;
  final VoidCallback? onTap;

  const LoginItems({
    super.key, required this.title, required this.image, required this.color, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/svg/auth/$image.svg'),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }
}
