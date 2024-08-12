import 'package:flutter/material.dart';
import 'package:flutter_app/pages/third_screen/model/user.dart';

class LocalProvider with ChangeNotifier {

  String _userTextInput = '';
  bool _isPalindrome = false;

  bool get isPalindrome => _isPalindrome;

  void checkPalindrome(String input) {

    String cleanedInput = input.replaceAll(RegExp(r'\s+'), '').toLowerCase();
    String reversedInput = cleanedInput.split('').reversed.join('');

    _userTextInput = input;
    _isPalindrome = cleanedInput == reversedInput;
    notifyListeners();
  }

  String _userName = '';

  String get userName => _userName;

  void setUserName(String name){
    _userName = name;
    notifyListeners();
  }

  User? _selectedUser;

  User? get selectedUser => _selectedUser;

  void selectUser(User user) {
    _selectedUser = user;
    notifyListeners();
  }

}
