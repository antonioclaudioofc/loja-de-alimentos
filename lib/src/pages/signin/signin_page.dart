import 'package:carrot_feirinha/src/pages/components/header_title.dart';
import 'package:carrot_feirinha/src/pages/components/label_togle_login.dart';
import 'package:carrot_feirinha/src/shared/components/custom_button.dart';
import 'package:carrot_feirinha/src/shared/components/default_form_field.dart';
import 'package:carrot_feirinha/src/shared/components/password_form_field.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../../shared/components/app_logo.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 16),
          child: Column(
            children: [
              const AppLogo(),
              HeaderTitle(
                title: "Faça o login",
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    DefaultFormField(
                      label: "Email",
                      hintText: "Digite seu email",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PasswordFormField(),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Esqueceu a senha?",
                          style: AppTextStyles.caption,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomButton(
                      label: "Entrar",
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          PagePaths.homePath,
                        );
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    LabelTogleLogin(
                      label: "Não possui conta? ",
                      labelLink: "Crie agora",
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          PagePaths.signupPath,
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
