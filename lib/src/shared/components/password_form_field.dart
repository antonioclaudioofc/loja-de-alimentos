import 'package:flutter/material.dart';

import '../../app/app.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Senha',
            style: AppTextStyles.labelInput,
            textAlign: TextAlign.start,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Digite sua senha",
              hintStyle: TextStyle(
                color: AppColors.black,
                fontSize: 18,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray300),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_off),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
