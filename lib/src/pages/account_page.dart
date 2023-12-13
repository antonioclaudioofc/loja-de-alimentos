import 'package:carrot_feirinha/src/components/buttons/custom_button.dart';
import 'package:carrot_feirinha/src/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../components/cards/item_configuration.dart';
import '../style/exports.dart';



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
            child: ScopedModelDescendant<UserModel>(
              builder: (context, child, model) {
                return Row(
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
                        Text(
                          model.user?.displayName ?? "",
                          style: AppTextStyles.h3,
                        ),
                        Text(
                          model.user?.email ?? "",
                          style: AppTextStyles.h4.copyWith(
                            color: AppColors.gray400,
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
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
          ScopedModelDescendant<UserModel>(
            builder: (context, child, model) {
              if(model.isLoading) return CircularProgressIndicator();
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: CustomButton(
                  label: "Sair",
                  onTap: () {
                    model.signOut(context);
                  },
                  logout: true,
                  color: AppColors.gray200,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
