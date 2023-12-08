import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  bool isLoading = false;

  AuthService() {
    _authCheck();
  }

  _getUser() {
    user = _auth.currentUser;
    notifyListeners();
  }

  _authCheck() {
    _auth.authStateChanges().listen((User? newUser) {
      user = newUser;
      isLoading = true;
      notifyListeners();
    });
  }

  registerWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _getUser();
    } catch (e) {
      print("Erro no registro: $e");
    }
  }
}
