import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza/config/Theme/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primary,
        child: Center(
          child: SvgPicture.asset('assets/images/svg/splash/laza_logo.svg'),
        ),
      )
    );
  }
}