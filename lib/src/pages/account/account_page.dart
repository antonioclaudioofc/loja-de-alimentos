import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:carrot_feirinha/src/shared/components/button_logout.dart';
import 'package:carrot_feirinha/src/shared/components/item_configuration.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/pimentao.png",
                    height: 64,
                    width: 64,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Antonio Claudio",
                      style: AppTextStyles.h3,
                    ),
                    Text(
                      "claudioteste@gmail.com",
                      style: AppTextStyles.labelInput.copyWith(
                        color: AppColors.gray400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(),
          ItemConfiguration(
            label: "Notificações",
            iconleft: Icon(Icons.notifications),
          ),
          Divider(),
          ItemConfiguration(
            label: "Ajuda",
            iconleft: Icon(Icons.help_outline),
          ),
          Divider(),
          ItemConfiguration(
            label: "Sobre",
            iconleft: Icon(Icons.info_outline_rounded),
          ),
          Divider(),
          ButtonLogout(),
        ],
      ),
    );
  }
}
