import 'package:flutter/material.dart';
import 'package:laza/features/initial_flow/presentation/pages/Onboarding.dart';
import 'package:laza/features/initial_flow/presentation/provider/onboarding_provider.dart';
import 'package:laza/features/initial_flow/presentation/provider/splash_provider.dart';
import 'package:laza/features/initial_flow/presentation/widgets/splash_design.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SplashProvider>();
    if (provider.isFirstOpen == null) {
      return SplashPage();
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (provider.isFirstOpen == true) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => ChangeNotifierProvider(
              create: (BuildContext context) => OnboardingProvider(),
              child: Onboarding(),
            ),
          ),
        );
      }
    });
    return SplashPage();
  }
}
