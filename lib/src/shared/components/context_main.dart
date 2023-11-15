import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:carrot_feirinha/src/shared/components/app_logo.dart';
import 'package:flutter/material.dart';

class ContextMain extends StatelessWidget {
  const ContextMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppLogo(
          width: 36,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_outlined),
            Text(
              "Caxias, Maranhão",
              style: AppTextStyles.labelInput,
            )
          ],
        )
      ],
    );
  }
}
