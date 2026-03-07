import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier{
  bool gender = true;
  
  void isMan(){
    gender = true;
    notifyListeners();
  }

  void isWoman(){
    gender = false;
    notifyListeners();
  }
}