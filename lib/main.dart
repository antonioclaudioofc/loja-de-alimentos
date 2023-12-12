import 'package:carrot_feirinha/src/app_widget.dart';
import 'package:carrot_feirinha/src/services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp();
    runApp(
      ChangeNotifierProvider(
        create: (context) => AuthService(),
        child: const AppWidget(),
      ),
    );
  } catch (e) {
    print("Erro ao inicializar o Firebase: $e");
  }
}
