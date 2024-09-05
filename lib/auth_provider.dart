import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  String _userName = "Guest"; // Default value
  String _userEmail = "guest@example.com"; // Default value

  bool get isAuthenticated => _isAuthenticated;
  String get userName => _userName;
  String get userEmail => _userEmail;

  void login({required String userName, required String userEmail}) {
    _isAuthenticated = true;
    _userName = userName;
    _userEmail = userEmail;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    _userName = "Guest"; // Reset to default values
    _userEmail = "guest@example.com";
    notifyListeners();
  }
}
