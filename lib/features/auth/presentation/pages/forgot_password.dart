import 'package:flutter/material.dart';
import 'package:laza/core/widgets/buttons/pr%C4%B1mary_button/primary_button.dart';
import 'package:laza/features/auth/presentation/pages/verification.dart';
import 'package:laza/features/auth/presentation/widgets/auth_main_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 20),
                          Image.asset(
                            'assets/images/png/auth/forgot_password_cloud.png',
                          ),
                          SizedBox(height: 20),
                          AuthTextField(
                            text: 'Email address',
                            obsecureText: false,
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.27),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Please write your email to receive a confirmation code to set a new password.',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
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
      bottomNavigationBar: PrimaryButton(text: 'Confirm Mail', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Verification()))),
    );
  }
}
