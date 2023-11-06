import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/app/app_routes.dart';
import 'package:carrot_feirinha/src/pages/components/header_title.dart';
import 'package:carrot_feirinha/src/pages/components/label_togle_login.dart';
import 'package:carrot_feirinha/src/shared/components/app_logo.dart';
import 'package:carrot_feirinha/src/shared/components/custom_button.dart';
import 'package:carrot_feirinha/src/shared/components/default_form_field.dart';
import 'package:carrot_feirinha/src/shared/components/password_form_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppLogo(),
            HeaderTitle(
              title: "Cadastre-se",
            ),
            Form(
              child: Column(
                children: [
                  DefaultFormField(
                    label: "Nome",
                    hintText: "Digite seu nome",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultFormField(
                    label: "Email",
                    hintText: "Digite seu email",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  PasswordFormField(),
                  SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                    label: "Cadastrar",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  LabelTogleLogin(
                    label: "Já possui conta? ",
                    labelLink: "Entrar",
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        PagePaths.signinPath,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
