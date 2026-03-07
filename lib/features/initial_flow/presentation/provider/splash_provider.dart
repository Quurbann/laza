import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashProvider extends ChangeNotifier{

  bool? isFirstOpen;

  Future<void> initialize() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 1));
    isFirstOpen = prefs.getBool('isFirstOpen') ?? true;
    notifyListeners();
  }
}