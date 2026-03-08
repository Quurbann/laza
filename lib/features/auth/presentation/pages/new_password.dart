import 'package:flutter/material.dart';
import 'package:laza/core/Theme/colors.dart';
import 'package:laza/core/widgets/buttons/pr%C4%B1mary_button/primary_button.dart';
import 'package:laza/features/auth/presentation/widgets/auth_main_text_field.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                children: [
                  Text("New Password", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),),
                  SizedBox(height: MediaQuery.sizeOf(context).height* 0.2,),
                  AuthTextField(text: 'New Password', obsecureText: false,),
                  SizedBox(height: 20,),
                  AuthTextField(text: 'Confirm Password', obsecureText: false,),
                  SizedBox(height: MediaQuery.sizeOf(context).height* 0.3,),
                  Text("Your new password must be different from the previous used password", style: TextStyle(fontSize: 14, color: AppColors.muted), textAlign: TextAlign.center,),
                ],
              ),
            ),   
          ),
        ),
      ),
      bottomNavigationBar: PrimaryButton(text: 'Reset Password', ),
    );
  }
}