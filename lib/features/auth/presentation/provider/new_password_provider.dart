import 'package:flutter/material.dart';

class NewPasswordProvider extends ChangeNotifier{
  String _newPassword1 = '';
  String _newPassword2 = '';

  String get newPassword1 => _newPassword1;
  String get newPassword2 => _newPassword2;

  void setNewPassword1(String value){
    _newPassword1 = value;
    notifyListeners();
  }

  void setNewPassword2(String value){
    _newPassword2 = value;
    notifyListeners();
  }

  void clear(){
    _newPassword1 = '';
    _newPassword2 = '';
    notifyListeners();
  }

}