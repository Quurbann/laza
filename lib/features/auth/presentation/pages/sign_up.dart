import 'package:flutter/material.dart';
import 'package:laza/config/Theme/colors.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button_provider.dart';
import 'package:laza/features/auth/presentation/widgets/auth_main_text_field.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Column(
                  children: [
                    MainTextField(text: 'Username', obsecureText: false),
                    SizedBox(height: 20),
                    MainTextField(text: 'Password', obsecureText: true),
                    SizedBox(height: 20),
                    MainTextField(text: 'Email', obsecureText: false),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Remember me',
                          style: TextStyle(color: AppColors.surfaceDark1),
                        ),
                       ChangeNotifierProvider(create: (BuildContext context) => ToggleButtonProvider(),
                       child: ToggleButton()),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
            'Sign Up',
            style: TextStyle(color: AppColors.white, fontSize: 15),
          ),
        ),
        ),
      );
    }
    
  }