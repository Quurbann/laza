import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza/core/theme/colors.dart';
import 'package:laza/features/initial_flow/presentation/pages/splash.dart';
import 'package:laza/features/initial_flow/presentation/provider/splash_provider.dart';
import 'package:provider/provider.dart';


class Laza extends StatelessWidget {
  const Laza({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme(), scaffoldBackgroundColor: AppColors.white, appBarTheme: AppBarTheme(backgroundColor: AppColors.white, elevation: 0, scrolledUnderElevation: 0)),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => SplashProvider()..initialize(),
        child: Splash(),
      ),
    );
  }
}