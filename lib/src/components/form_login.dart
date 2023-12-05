import 'package:carrot_feirinha/src/components/buttons/custom_button.dart';
import 'package:carrot_feirinha/src/components/inputs/common_input.dart';
import 'package:flutter/material.dart';

import '../style/exports.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
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
              Navigator.pushNamed(
                context,
                PagePaths.navigationPath,
              );
            },
          ),
          const SizedBox(
            height: 6,
          ),
        ],
      ),
    );
  }
}
