import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier{
  String? gender ;
  
  void isMan(){
    gender = 'man';
    notifyListeners();
  }

  void isWoman(){
    gender = 'woman';
    notifyListeners();
  }
}