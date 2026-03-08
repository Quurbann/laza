import 'package:flutter/material.dart';
import 'package:laza/core/Theme/colors.dart';
import 'package:laza/features/auth/presentation/pages/get_start.dart';
import 'package:laza/features/initial_flow/presentation/provider/onboarding_provider.dart';
import 'package:laza/features/initial_flow/presentation/widgets/initial_flow_buttons.dart';
import 'package:provider/provider.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<OnboardingProvider>();
    return Scaffold(
      body: Expanded(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffB0A3E5), Color(0xff625A7F)],
              stops: [0.0, 1.0],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.58,
                    ),
                    child: provider.gender == true
                        ? Image.asset(
                            'assets/images/png/onboarding/onboarding_man.png',
                          )
                        : Image.asset(
                            'assets/images/png/onboarding/onboarding_woman.png',
                          ),
                  ),
                  Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            'Look Good, Feel Good',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: AppColors.dark,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Create your individual & unique style and look amazing everyday.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.muted,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              GenderChoiceButton(
                                gender: 'Men',
                                backgroundColor: AppColors.surfaceLight,
                                textColor: AppColors.muted,
                                onPressed: () async{
                                  context.read<OnboardingProvider>().isMan();
                                  await Future.delayed(Duration(milliseconds: 500));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => GetStart()),
                                  );
                                },
                              ),
                              GenderChoiceButton(
                                gender: 'Woman',
                                backgroundColor: AppColors.primary,
                                textColor: AppColors.white,
                                onPressed: () async{
                                  context.read<OnboardingProvider>().isWoman();
                                  await Future.delayed(Duration(milliseconds: 500));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => GetStart()),
                                  );
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => GetStart()),
                            );
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(fontSize: 17, color: AppColors.muted),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}