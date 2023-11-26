import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:flutter/material.dart';

class ItemConfiguration extends StatelessWidget {
  const ItemConfiguration({
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
        style: AppTextStyles.subtitle,
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
      ),
      onTap: () {},
    );
  }
}
