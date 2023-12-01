import 'package:carrot_feirinha/src/components/buttons/custom_button.dart';
import 'package:carrot_feirinha/src/components/form_login.dart';
import 'package:flutter/material.dart';

import '../../style/exports.dart';
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
              Text(
                "Ou",
                style: AppTextStyles.h4.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              CustomButton(
                label: "Conecte com o google",
                onTap: () {},
                color: AppColors.blue500,
                isGoogle: true,
              ),
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
