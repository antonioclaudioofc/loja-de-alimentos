import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../route/app_routes.dart';

class UserModel extends Model {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  bool isLoading = false;
  bool isAdmin = false;

  String? get uid => null;


  Future<void> _getUser(Map<String, dynamic> data) async {
    user = _auth.currentUser;
    Map<String, dynamic> userData = {
      'uid': user!.uid,
      'name': data['name'],
      'email': data['email'],
      'isAdmin': data['isAdmin']
    };

    await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .set(userData);

    await _loadUserDetails();
    notifyListeners();
  }

  Future<void> signUp(
    BuildContext context,
    Map<String, dynamic> userData,
    String password,
    VoidCallback _onSuccess,
    VoidCallback _onFail,
  ) async {
    isLoading = true;
    notifyListeners();

    try {
      await _auth.createUserWithEmailAndPassword(
        email: userData['email'],
        password: password,
      );
      await _getUser(userData);
      _onSuccess();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('A senha deve possuir 8 caracteres')),
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Email já existente')),
        );
      }
      _onFail();
    } catch (e) {
      print(e);
      _onFail();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signIn(
    BuildContext context,
    String email,
    String password,
    VoidCallback _onSuccess,
    VoidCallback _onFail,
  ) async {
    isLoading = true;
    notifyListeners();

    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = credential.user;

      await _loadUserDetails();

      _onSuccess();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Email não encontrado')),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Senha inválidas!')),
        );
      }
      _onFail();
    } catch (e) {
      print(e);
      _onFail();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signOut(BuildContext context) async {
    try {
      await _auth.signOut();
      notifyListeners();
      Navigator.pushNamed(
        context,
        PagePaths.signinPath,
      );
    } catch (e) {
      print('Erro ao fazer logout: $e');
    }
  }

  Future<void> _loadUserDetails() async {
    if (user != null) {
      try {
        final userDataSnapshot = await FirebaseFirestore.instance
            .collection("users")
            .doc(user!.uid)
            .get();

        if (userDataSnapshot.exists) {
          final userData = userDataSnapshot.data()!;
          await user!.updateDisplayName(userData['name']);
          isAdmin = userData['isAdmin']; 
          print("User: ${isAdmin}");
          notifyListeners();
        }
      } catch (e) {
        print('Erro ao carregar dados do usuário: $e');
      }
    }
  }

  bool isLoggedIn() {
    return user != null;
  }

    bool isUserAdmin() {
    return isAdmin;
  }
}
