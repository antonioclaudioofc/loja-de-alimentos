import 'package:firebase_auth/firebase_auth.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel extends Model {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? user;

  bool isLoading = false;

  _getUser() async {
    user = _auth.currentUser;
    Map<String, dynamic> userData = {
      'uid': user?.uid,
      'email': user?.email,
    };

    await FirebaseFirestore.instance
        .collection("users")
        .doc(user?.uid)
        .set(userData);
    notifyListeners();
  }

  signUp(String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _getUser();
      isLoading = false;
    } catch (e) {
      print("Erro no registro: $e");
      isLoading = false;
      notifyListeners();
    }
  }

  signIn() async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 3));

    isLoading = false;
    notifyListeners();
  }

  recoverPass() {}

  // bool isLoggedIn() {}
}
