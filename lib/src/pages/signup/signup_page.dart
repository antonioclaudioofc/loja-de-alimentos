import 'package:carrot_feirinha/src/services/auth_service.dart';
import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:carrot_feirinha/src/components/buttons/custom_button.dart';
import 'package:carrot_feirinha/src/components/header_logo.dart';
import 'package:carrot_feirinha/src/components/inputs/common_input.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../components/app_logo.dart';
import '../../components/create_or_login_account_button.dart';
import '../../model/user_model.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey();
  final _controllerName = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _controllerPasswordConfirm = TextEditingController();

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
                      title: "Cadastre-se",
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CommonInput(
                              controller: _controllerName,
                              label: "Nome",
                              hintText: "Digite seu nome",
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CommonInput(
                              controller: _controllerEmail,
                              label: "Email",
                              hintText: "exemplo@gmail.com",
                              icon: const Icon(
                                Icons.check,
                                color: AppColors.green400,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CommonInput(
                              controller: _controllerPassword,
                              label: "Senha",
                              hintText: "Insira sua senha",
                              icon: const Icon(
                                Icons.visibility_off_outlined,
                                color: AppColors.gray500,
                              ),
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CommonInput(
                              controller: _controllerPasswordConfirm,
                              label: "Confirme sua senha",
                              hintText: "Insira sua senha novamente",
                              icon: const Icon(
                                Icons.visibility_off_outlined,
                                color: AppColors.gray500,
                              ),
                              onPressed: () {},
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            CustomButton(
                              label: "Cadastrar",
                              onTap: () {
                                model.signUp(
                                  _controllerEmail.text,
                                  _controllerName.text,
                                );
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            CreateOrLoginAccountButton(
                              label: "Já possui conta? ",
                              link: "Entrar",
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
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
