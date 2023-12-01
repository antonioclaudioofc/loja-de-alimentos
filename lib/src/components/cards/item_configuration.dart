import 'package:flutter/material.dart';

import '../../style/app_text_styles.dart';

class SettingsItemCard extends StatelessWidget {
  const SettingsItemCard({
    Key? key,
    required this.label,
    required this.iconleft,
  }) : super(key: key);

  final String label;
  final Icon iconleft;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconleft,
      title: Text(
        label,
        style: AppTextStyles.h3,
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right_outlined,
      ),
      onTap: () {},
    );
  }
}
