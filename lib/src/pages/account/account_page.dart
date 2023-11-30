import 'package:carrot_feirinha/src/components/buttons/custom_button.dart';
import 'package:flutter/material.dart';

import '../../app/app_colors.dart';
import '../../app/app_text_styles.dart';
import '../../components/cards/item_configuration.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
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
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Antonio Claudio",
                      style: AppTextStyles.h3,
                    ),
                    Text(
                      "claudioteste@gmail.com",
                      style: AppTextStyles.h4.copyWith(
                        color: AppColors.gray400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(),
          const SettingsItemCard(
            label: "Notificações",
            iconleft: Icon(Icons.notifications),
          ),
          const Divider(),
          const SettingsItemCard(
            label: "Ajuda",
            iconleft: Icon(Icons.help_outline),
          ),
          const Divider(),
          const SettingsItemCard(
            label: "Sobre",
            iconleft: Icon(Icons.info_outline_rounded),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: CustomButton(
              label: "Sair",
              onTap: () {},
              logout: true,
            ),
          )
        ],
      ),
    );
  }
}
