import 'package:flutter/material.dart';
import 'package:laza/core/Theme/colors.dart';
import 'package:laza/core/widgets/buttons/pr%C4%B1mary_button/primary_button.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button_provider.dart';
import 'package:laza/features/auth/presentation/pages/sign_in.dart';
import 'package:laza/features/auth/presentation/widgets/auth_main_text_field.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.16),
                  Column(
                    children: [
                      AuthTextField(text: 'Username', obsecureText: false),
                      SizedBox(height: 20),
                      AuthTextField(text: 'Password', obsecureText: true),
                      SizedBox(height: 20),
                      AuthTextField(text: 'Email', obsecureText: false),
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
      ),
      bottomNavigationBar: PrimaryButton(text: 'Sign Up', onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChangeNotifierProvider(create: (context) => ToggleButtonProvider(), child: SignIn(),))),),
      );
    }
    
  }