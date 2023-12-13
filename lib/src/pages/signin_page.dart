import 'package:carrot_feirinha/src/components/buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../components/app_logo.dart';
import '../components/create_or_login_account_button.dart';
import '../components/header_logo.dart';
import '../components/inputs/common_input.dart';
import '../model/user_model.dart';
import '../route/app_routes.dart';
import '../style/app_colors.dart';
import '../style/app_text_styles.dart';


class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model) {
          if (model.isLoading)
            return Center(
              child: CircularProgressIndicator(),
            );
          return Center(
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
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CommonInput(
                          label: "Email",
                          hintText: "Digite seu email",
                          controller: _controllerEmail,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CommonInput(
                          controller: _controllerPassword,
                          label: "Senha",
                          hintText: "***********",
                          icon: const Icon(
                            Icons.visibility_off_outlined,
                            color: AppColors.gray400,
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Esqueceu a senha?",
                            style: AppTextStyles.h5.copyWith(
                              color: AppColors.gray700,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomButton(
                          label: "Entrar",
                          onTap: () {
                            // Navigator.pushNamed(
                            //   context,
                            //   PagePaths.navigationPath,
                            // );

                            model.signIn(
                              context,
                              _controllerEmail.text,
                              _controllerPassword.text,
                              _onSuccess,
                              _onFail,
                            );
                          },
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ),
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
                    label: "Não possui conta? ",
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
          );
        },
      ),
    );
  }

  void _onSuccess() {
    Navigator.pushNamed(
      context,
      PagePaths.checkUserOrAdmin,
    );
  }

  void _onFail() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Center(
            child: Text('Falha ao entrar!'),
          ),
          backgroundColor: AppColors.red500,
          duration: Duration(seconds: 2),
        ),
      );
    });
  }
}
