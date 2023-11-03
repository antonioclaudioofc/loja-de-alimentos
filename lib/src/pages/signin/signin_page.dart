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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            const AppLogo(),
            Text(
              "Faça Login",
              style: AppTextStyles.h1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 64,
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DefaultFormField(),
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
                  Container(
                    width: double.infinity,
                    height: 56,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.green600,
                      ),
                      child: Text(
                        'Entrar',
                        style: AppTextStyles.button,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {  },
                      child: RichText(
                        text: TextSpan(
                          text: "Não possui conta?",
                          style: AppTextStyles.labelInput,
                          children: [
                            TextSpan(
                              text: "Crie agora",
                              style: AppTextStyles.labelInput.copyWith(
                                color: AppColors.green600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
