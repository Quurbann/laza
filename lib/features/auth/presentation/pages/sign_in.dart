import 'package:flutter/material.dart';
import 'package:laza/core/Theme/colors.dart';
import 'package:laza/core/widgets/buttons/pr%C4%B1mary_button/primary_button.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button_provider.dart';
import 'package:laza/features/auth/presentation/pages/forgot_password.dart';
import 'package:laza/features/auth/presentation/widgets/auth_main_text_field.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: AppColors.surfaceDark1,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Please enter your data to continue',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.muted,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.16,),
                  Column(
                    children: [
                      AuthTextField(text: "Username", obsecureText: false),
                      SizedBox(height: 20),
                      AuthTextField(text: "Password", obsecureText: true),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: .end,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPassword(),
                              ),
                            ),
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffea4335),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Remember me',
                            style: TextStyle(color: AppColors.surfaceDark1),
                          ),
                          ChangeNotifierProvider(
                            create: (BuildContext context) =>
                                ToggleButtonProvider(),
                            child: ToggleButton(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.14,),
                  Padding(
                    padding: EdgeInsets.only(left: 14, right: 14),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(color: AppColors.muted, fontSize: 14),
                        children: [
                          TextSpan(
                            text:
                                "By connecting your account confirm that you agree with our",
                          ),
                          TextSpan(
                            text: "Term and Condition",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
      bottomNavigationBar: PrimaryButton(text: 'Login'),
    );
  }
}
