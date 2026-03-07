import 'package:flutter/material.dart';
import 'package:laza/config/Theme/colors.dart';
import 'package:laza/features/auth/presentation/pages/sign_up.dart';
import 'package:laza/features/auth/presentation/widgets/auth_login_items.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Let’s Get Started",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Column(
                  children: [
                    LoginItems(
                      title: 'Facebook',
                      image: 'Facebook',
                      color: Color(0xff4267B2),
                      onTap: () {},
                    ),
                    SizedBox(height: 10),
                    LoginItems(
                      title: 'Twitter',
                      image: 'Twitter',
                      color: Color(0xff1DA1F2),
                      onTap: () {},
                    ),
                    SizedBox(height: 10),
                    LoginItems(
                      title: 'Google',
                      image: 'Google',
                      color: Color(0xffEA4335),
                      onTap: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: AppColors.muted,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp())),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 15, bottom: 40),
        decoration: BoxDecoration(color: AppColors.primary),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Create an Account',
            style: TextStyle(color: AppColors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
