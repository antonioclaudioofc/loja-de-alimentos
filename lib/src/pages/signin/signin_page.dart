import 'package:carrot_feirinha/src/components/form_login.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../../components/app_logo.dart';
import '../../components/create_or_login_account_button.dart';
import '../../components/header_logo.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: [
              const AppLogo(),
              const HeaderLogo(
                title: "Faça o login",
              ),
              const FormLogin(),
              CreateOrLoginAccountButton(
                label: "Não possui conta?",
                link: "Crie agora",
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    PagePaths.signupPath,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
